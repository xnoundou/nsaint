; ModuleID = 'tests/t.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Enter an integer now: \00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind
define i32* @testIt(i32* %y) #0 {
entry:
  %y.addr = alloca i32*, align 4
  %buf = alloca i8*, align 4
  store i32* %y, i32** %y.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32** %y.addr}, metadata !16), !dbg !17
  call void @llvm.dbg.declare(metadata !{i8** %buf}, metadata !18), !dbg !19
  %call = call noalias i8* @malloc(i32 10) #3, !dbg !19
  store i8* %call, i8** %buf, align 4, !dbg !19
  %0 = load i32** %y.addr, align 4, !dbg !20
  ret i32* %0, !dbg !20
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #0

; Function Attrs: nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %c = alloca i32, align 4
  %px = alloca i32*, align 4
  %py = alloca i32*, align 4
  %z = alloca i32*, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %argc.addr}, metadata !21), !dbg !22
  store i8** %argv, i8*** %argv.addr, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %argv.addr}, metadata !23), !dbg !22
  call void @llvm.dbg.declare(metadata !{i32* %x}, metadata !24), !dbg !25
  call void @llvm.dbg.declare(metadata !{i32* %y}, metadata !26), !dbg !27
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !28), !dbg !29
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0)), !dbg !30
  %call1 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %x), !dbg !31
  call void @llvm.dbg.declare(metadata !{i32** %px}, metadata !32), !dbg !33
  store i32* %x, i32** %px, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata !{i32** %py}, metadata !34), !dbg !35
  %0 = load i32** %px, align 4, !dbg !35
  %call2 = call i32* @testIt(i32* %0), !dbg !35
  store i32* %call2, i32** %py, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata !{i32** %z}, metadata !36), !dbg !37
  %call3 = call i32* @testIt(i32* %c), !dbg !37
  store i32* %call3, i32** %z, align 4, !dbg !37
  %1 = load i32** %px, align 4, !dbg !38
  store i32* %1, i32** %py, align 4, !dbg !38
  ret i32 0, !dbg !39
}

declare i32 @printf(i8*, ...) #2

declare i32 @__isoc99_scanf(i8*, ...) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/noundou/tools/llvm-3.3.src/lib/Analysis/CTaint/tests/t.c] [DW_LANG_C99]
!1 = metadata !{metadata !"tests/t.c", metadata !"/home/noundou/tools/llvm-3.3.src/lib/Analysis/CTaint"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !10}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"testIt", metadata !"testIt", metadata !"", i32 4, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* (i32*)* @testIt, null, null, metadata !2, i32 4} ; [ DW_TAG_subprogram ] [line 4] [def] [testIt]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/noundou/tools/llvm-3.3.src/lib/Analysis/CTaint/tests/t.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 10, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 10] [def] [scope 11] [main]
!11 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !9, metadata !9, metadata !13}
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!15 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!16 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 16777220, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 4]
!17 = metadata !{i32 4, i32 0, metadata !4, null}
!18 = metadata !{i32 786688, metadata !4, metadata !"buf", metadata !5, i32 5, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 5]
!19 = metadata !{i32 5, i32 0, metadata !4, null}
!20 = metadata !{i32 7, i32 0, metadata !4, null}
!21 = metadata !{i32 786689, metadata !10, metadata !"argc", metadata !5, i32 16777226, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 10]
!22 = metadata !{i32 10, i32 0, metadata !10, null}
!23 = metadata !{i32 786689, metadata !10, metadata !"argv", metadata !5, i32 33554442, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 10]
!24 = metadata !{i32 786688, metadata !10, metadata !"x", metadata !5, i32 12, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 12]
!25 = metadata !{i32 12, i32 0, metadata !10, null}
!26 = metadata !{i32 786688, metadata !10, metadata !"y", metadata !5, i32 13, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 13]
!27 = metadata !{i32 13, i32 0, metadata !10, null}
!28 = metadata !{i32 786688, metadata !10, metadata !"c", metadata !5, i32 14, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 14]
!29 = metadata !{i32 14, i32 0, metadata !10, null}
!30 = metadata !{i32 15, i32 0, metadata !10, null}
!31 = metadata !{i32 16, i32 0, metadata !10, null}
!32 = metadata !{i32 786688, metadata !10, metadata !"px", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [px] [line 18]
!33 = metadata !{i32 18, i32 0, metadata !10, null}
!34 = metadata !{i32 786688, metadata !10, metadata !"py", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [py] [line 19]
!35 = metadata !{i32 19, i32 0, metadata !10, null}
!36 = metadata !{i32 786688, metadata !10, metadata !"z", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 20]
!37 = metadata !{i32 20, i32 0, metadata !10, null}
!38 = metadata !{i32 22, i32 0, metadata !10, null}
!39 = metadata !{i32 24, i32 0, metadata !10, null}
