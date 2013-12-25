; ModuleID = 'tests/e.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %buf = alloca [10 x i8], align 1
  %c = alloca i8*, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %argc.addr}, metadata !12), !dbg !13
  store i8** %argv, i8*** %argv.addr, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %argv.addr}, metadata !14), !dbg !13
  call void @llvm.dbg.declare(metadata !{[10 x i8]* %buf}, metadata !15), !dbg !19
  call void @llvm.dbg.declare(metadata !{i8** %c}, metadata !20), !dbg !21
  %arraydecay = getelementptr inbounds [10 x i8]* %buf, i32 0, i32 0, !dbg !21
  store i8* %arraydecay, i8** %c, align 4, !dbg !21
  %0 = load i8** %c, align 4, !dbg !22
  %call = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i8* %0), !dbg !22
  ret i32 0, !dbg !23
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__isoc99_scanf(i8*, ...) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/noundou/tools/llvm-3.3.src/lib/Analysis/CTaint/tests/e.c] [DW_LANG_C99]
!1 = metadata !{metadata !"tests/e.c", metadata !"/home/noundou/tools/llvm-3.3.src/lib/Analysis/CTaint"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 4, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 4} ; [ DW_TAG_subprogram ] [line 4] [def] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/noundou/tools/llvm-3.3.src/lib/Analysis/CTaint/tests/e.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!11 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!12 = metadata !{i32 786689, metadata !4, metadata !"argc", metadata !5, i32 16777220, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 4]
!13 = metadata !{i32 4, i32 0, metadata !4, null}
!14 = metadata !{i32 786689, metadata !4, metadata !"argv", metadata !5, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 4]
!15 = metadata !{i32 786688, metadata !4, metadata !"buf", metadata !5, i32 5, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 5]
!16 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 80, i64 8, i32 0, i32 0, metadata !11, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 80, align 8, offset 0] [from char]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ] [0, 9]
!19 = metadata !{i32 5, i32 0, metadata !4, null}
!20 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 6, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 6]
!21 = metadata !{i32 6, i32 0, metadata !4, null}
!22 = metadata !{i32 7, i32 0, metadata !4, null}
!23 = metadata !{i32 8, i32 0, metadata !4, null}
