; ModuleID = 'tests/test.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Enter an integer now: \00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind
define i32 @compute(i32* %x) #0 {
entry:
  %x.addr = alloca i32*, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %x, i32** %x.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32** %x.addr}, metadata !17), !dbg !18
  call void @llvm.dbg.declare(metadata !{i32* %sum}, metadata !19), !dbg !20
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !21), !dbg !20
  %0 = load i32** %x.addr, align 4, !dbg !22
  %1 = load i32* %0, align 4, !dbg !22
  %cmp = icmp eq i32 %1, 2, !dbg !22
  br i1 %cmp, label %if.then, label %if.else, !dbg !22

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0)), !dbg !23
  %call1 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %sum), !dbg !25
  br label %if.end, !dbg !26

if.else:                                          ; preds = %entry
  store i32 0, i32* %sum, align 4, !dbg !27
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4, !dbg !28
  br label %for.cond, !dbg !28

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32* %i, align 4, !dbg !28
  %3 = load i32* %sum, align 4, !dbg !28
  %cmp2 = icmp slt i32 %2, %3, !dbg !28
  br i1 %cmp2, label %for.body, label %for.end, !dbg !28

for.body:                                         ; preds = %for.cond
  %4 = load i32* %sum, align 4, !dbg !30
  %5 = load i32** %x.addr, align 4, !dbg !30
  %6 = load i32* %5, align 4, !dbg !30
  %add = add nsw i32 %6, %4, !dbg !30
  store i32 %add, i32* %5, align 4, !dbg !30
  br label %for.inc, !dbg !30

for.inc:                                          ; preds = %for.body
  %7 = load i32* %i, align 4, !dbg !28
  %inc = add nsw i32 %7, 1, !dbg !28
  store i32 %inc, i32* %i, align 4, !dbg !28
  br label %for.cond, !dbg !28

for.end:                                          ; preds = %for.cond
  %8 = load i32* %sum, align 4, !dbg !31
  ret i32 %8, !dbg !31
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

declare i32 @__isoc99_scanf(i8*, ...) #2

; Function Attrs: nounwind
define i32 @odd(i32 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %x.addr}, metadata !32), !dbg !33
  %0 = load i32* %x.addr, align 4, !dbg !34
  %cmp = icmp eq i32 %0, 1, !dbg !34
  br i1 %cmp, label %if.then, label %if.else, !dbg !34

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !35
  br label %return, !dbg !35

if.else:                                          ; preds = %entry
  %1 = load i32* %x.addr, align 4, !dbg !36
  %sub = sub nsw i32 %1, 1, !dbg !36
  %call = call i32 @even(i32 %sub), !dbg !36
  store i32 %call, i32* %retval, !dbg !36
  br label %return, !dbg !36

return:                                           ; preds = %if.else, %if.then
  %2 = load i32* %retval, !dbg !37
  ret i32 %2, !dbg !37
}

; Function Attrs: nounwind
define i32 @even(i32 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %x.addr}, metadata !38), !dbg !39
  %0 = load i32* %x.addr, align 4, !dbg !40
  %cmp = icmp eq i32 %0, 0, !dbg !40
  br i1 %cmp, label %if.then, label %if.else, !dbg !40

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, !dbg !41
  br label %return, !dbg !41

if.else:                                          ; preds = %entry
  %1 = load i32* %x.addr, align 4, !dbg !42
  %sub = sub nsw i32 %1, 1, !dbg !42
  %call = call i32 @odd(i32 %sub), !dbg !42
  store i32 %call, i32* %retval, !dbg !42
  br label %return, !dbg !42

return:                                           ; preds = %if.else, %if.then
  %2 = load i32* %retval, !dbg !43
  ret i32 %2, !dbg !43
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %b1 = alloca i32, align 4
  %b2 = alloca i32, align 4
  %y = alloca i32, align 4
  %str = alloca [10 x i8], align 1
  %d = alloca i8*, align 4
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{i32* %x}, metadata !44), !dbg !45
  call void @llvm.dbg.declare(metadata !{i32* %b1}, metadata !46), !dbg !45
  call void @llvm.dbg.declare(metadata !{i32* %b2}, metadata !47), !dbg !45
  call void @llvm.dbg.declare(metadata !{i32* %y}, metadata !48), !dbg !45
  call void @llvm.dbg.declare(metadata !{[10 x i8]* %str}, metadata !49), !dbg !54
  call void @llvm.dbg.declare(metadata !{i8** %d}, metadata !55), !dbg !57
  %call = call noalias i8* @malloc(i32 25) #4, !dbg !57
  store i8* %call, i8** %d, align 4, !dbg !57
  %arraydecay = getelementptr inbounds [10 x i8]* %str, i32 0, i32 0, !dbg !58
  %call1 = call double @atof(i8* %arraydecay) #5, !dbg !58
  %0 = load i8** %d, align 4, !dbg !59
  call void @free(i8* %0) #4, !dbg !59
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0)), !dbg !60
  %call3 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %x), !dbg !61
  %1 = load i32* %x, align 4, !dbg !62
  %call4 = call i32 @even(i32 %1), !dbg !62
  store i32 %call4, i32* %b1, align 4, !dbg !62
  %call5 = call i32 @odd(i32 3), !dbg !63
  store i32 %call5, i32* %b2, align 4, !dbg !63
  %call6 = call i32 @compute(i32* %x), !dbg !64
  store i32 %call6, i32* %y, align 4, !dbg !64
  %arraydecay7 = getelementptr inbounds [10 x i8]* %str, i32 0, i32 0, !dbg !65
  %2 = load i32* %y, align 4, !dbg !65
  %call8 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay7, i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32 %2) #4, !dbg !65
  ret i32 0, !dbg !66
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #0

; Function Attrs: nounwind readonly
declare double @atof(i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #0

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/noundou/tools/llvm-3.3.src/lib/Analysis/CTaint/tests/test.c] [DW_LANG_C99]
!1 = metadata !{metadata !"tests/test.c", metadata !"/home/noundou/tools/llvm-3.3.src/lib/Analysis/CTaint"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !10, metadata !13, metadata !14}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"compute", metadata !"compute", metadata !"", i32 9, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32*)* @compute, null, null, metadata !2, i32 10} ; [ DW_TAG_subprogram ] [line 9] [def] [scope 10] [compute]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/noundou/tools/llvm-3.3.src/lib/Analysis/CTaint/tests/test.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"odd", metadata !"odd", metadata !"", i32 23, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @odd, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 24] [odd]
!11 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"even", metadata !"even", metadata !"", i32 31, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @even, null, null, metadata !2, i32 32} ; [ DW_TAG_subprogram ] [line 31] [def] [scope 32] [even]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 39, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 40} ; [ DW_TAG_subprogram ] [line 39] [def] [scope 40] [main]
!15 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !8}
!17 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777225, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 9]
!18 = metadata !{i32 9, i32 0, metadata !4, null}
!19 = metadata !{i32 786688, metadata !4, metadata !"sum", metadata !5, i32 11, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 11]
!20 = metadata !{i32 11, i32 0, metadata !4, null}
!21 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 11, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 11]
!22 = metadata !{i32 12, i32 0, metadata !4, null}
!23 = metadata !{i32 13, i32 0, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !4, i32 12, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/noundou/tools/llvm-3.3.src/lib/Analysis/CTaint/tests/test.c]
!25 = metadata !{i32 14, i32 0, metadata !24, null}
!26 = metadata !{i32 15, i32 0, metadata !24, null}
!27 = metadata !{i32 17, i32 0, metadata !4, null}
!28 = metadata !{i32 18, i32 0, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/noundou/tools/llvm-3.3.src/lib/Analysis/CTaint/tests/test.c]
!30 = metadata !{i32 19, i32 0, metadata !29, null}
!31 = metadata !{i32 20, i32 0, metadata !4, null}
!32 = metadata !{i32 786689, metadata !10, metadata !"x", metadata !5, i32 16777239, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 23]
!33 = metadata !{i32 23, i32 0, metadata !10, null}
!34 = metadata !{i32 25, i32 0, metadata !10, null}
!35 = metadata !{i32 26, i32 0, metadata !10, null}
!36 = metadata !{i32 28, i32 0, metadata !10, null}
!37 = metadata !{i32 29, i32 0, metadata !10, null}
!38 = metadata !{i32 786689, metadata !13, metadata !"x", metadata !5, i32 16777247, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 31]
!39 = metadata !{i32 31, i32 0, metadata !13, null}
!40 = metadata !{i32 33, i32 0, metadata !13, null}
!41 = metadata !{i32 34, i32 0, metadata !13, null}
!42 = metadata !{i32 36, i32 0, metadata !13, null}
!43 = metadata !{i32 37, i32 0, metadata !13, null}
!44 = metadata !{i32 786688, metadata !14, metadata !"x", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 41]
!45 = metadata !{i32 41, i32 0, metadata !14, null}
!46 = metadata !{i32 786688, metadata !14, metadata !"b1", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b1] [line 41]
!47 = metadata !{i32 786688, metadata !14, metadata !"b2", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b2] [line 41]
!48 = metadata !{i32 786688, metadata !14, metadata !"y", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 41]
!49 = metadata !{i32 786688, metadata !14, metadata !"str", metadata !5, i32 42, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [str] [line 42]
!50 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 80, i64 8, i32 0, i32 0, metadata !51, metadata !52, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 80, align 8, offset 0] [from char]
!51 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!52 = metadata !{metadata !53}
!53 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ] [0, 9]
!54 = metadata !{i32 42, i32 0, metadata !14, null}
!55 = metadata !{i32 786688, metadata !14, metadata !"d", metadata !5, i32 43, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 43]
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!57 = metadata !{i32 43, i32 0, metadata !14, null}
!58 = metadata !{i32 44, i32 0, metadata !14, null}
!59 = metadata !{i32 45, i32 0, metadata !14, null}
!60 = metadata !{i32 46, i32 0, metadata !14, null}
!61 = metadata !{i32 47, i32 0, metadata !14, null}
!62 = metadata !{i32 48, i32 0, metadata !14, null}
!63 = metadata !{i32 49, i32 0, metadata !14, null}
!64 = metadata !{i32 50, i32 0, metadata !14, null}
!65 = metadata !{i32 51, i32 0, metadata !14, null}
!66 = metadata !{i32 52, i32 0, metadata !14, null}
