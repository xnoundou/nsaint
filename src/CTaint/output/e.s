; ModuleID = 'tests/e.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

define i32 @main(i32 %argc, i8** %argv) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %buf = alloca [10 x i8], align 1
  %c = alloca i8*, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !12), !dbg !13
  store i8** %argv, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !14), !dbg !18
  call void @llvm.dbg.declare(metadata !{[10 x i8]* %buf}, metadata !19), !dbg !24
  call void @llvm.dbg.declare(metadata !{i8** %c}, metadata !25), !dbg !26
  %4 = getelementptr inbounds [10 x i8]* %buf, i32 0, i32 0, !dbg !27
  store i8* %4, i8** %c, align 8, !dbg !27
  %5 = load i8** %c, align 8, !dbg !28
  %6 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i8* %5), !dbg !28
  ret i32 0, !dbg !29
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @__isoc99_scanf(i8*, ...)

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 720913, i32 0, i32 12, metadata !"tests/e.c", metadata !"/home/noundou/ece750-project/src/CTaint", metadata !"Debian clang version 3.0-6.2 (tags/RELEASE_30/final) (based on LLVM 3.0)", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 720942, i32 0, metadata !6, metadata !"main", metadata !"main", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !10} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 720937, metadata !"tests/e.c", metadata !"/home/noundou/ece750-project/src/CTaint", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9}
!9 = metadata !{i32 720932, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 721153, metadata !5, metadata !"argc", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 4, i32 14, metadata !5, null}
!14 = metadata !{i32 721153, metadata !5, metadata !"argv", metadata !6, i32 33554436, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!15 = metadata !{i32 720911, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 720911, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 720932, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 4, i32 26, metadata !5, null}
!19 = metadata !{i32 721152, metadata !20, metadata !"buf", metadata !6, i32 5, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!20 = metadata !{i32 720907, metadata !5, i32 4, i32 34, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!21 = metadata !{i32 720897, null, metadata !"", null, i32 0, i64 80, i64 8, i32 0, i32 0, metadata !17, metadata !22, i32 0, i32 0} ; [ DW_TAG_array_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 720929, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!24 = metadata !{i32 5, i32 10, metadata !20, null}
!25 = metadata !{i32 721152, metadata !20, metadata !"c", metadata !6, i32 6, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!26 = metadata !{i32 6, i32 11, metadata !20, null}
!27 = metadata !{i32 6, i32 18, metadata !20, null}
!28 = metadata !{i32 7, i32 5, metadata !20, null}
!29 = metadata !{i32 8, i32 5, metadata !20, null}
