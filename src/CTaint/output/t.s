; ModuleID = 'tests/t.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Enter an integer now: \00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

define i32* @testIt(i32* %y) nounwind uwtable {
  %1 = alloca i32*, align 8
  %buf = alloca i8*, align 8
  store i32* %y, i32** %1, align 8
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !18), !dbg !19
  call void @llvm.dbg.declare(metadata !{i8** %buf}, metadata !20), !dbg !24
  %2 = call noalias i8* @malloc(i64 10) nounwind, !dbg !25
  store i8* %2, i8** %buf, align 8, !dbg !25
  %3 = load i32** %1, align 8, !dbg !26
  ret i32* %3, !dbg !26
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare noalias i8* @malloc(i64) nounwind

define i32 @main(i32 %argc, i8** %argv) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %c = alloca i32, align 4
  %px = alloca i32*, align 8
  %py = alloca i32*, align 8
  %z = alloca i32*, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !27), !dbg !28
  store i8** %argv, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !29), !dbg !31
  call void @llvm.dbg.declare(metadata !{i32* %x}, metadata !32), !dbg !34
  call void @llvm.dbg.declare(metadata !{i32* %y}, metadata !35), !dbg !36
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !37), !dbg !38
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0)), !dbg !39
  %5 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %x), !dbg !40
  call void @llvm.dbg.declare(metadata !{i32** %px}, metadata !41), !dbg !42
  store i32* %x, i32** %px, align 8, !dbg !43
  call void @llvm.dbg.declare(metadata !{i32** %py}, metadata !44), !dbg !45
  %6 = load i32** %px, align 8, !dbg !46
  %7 = call i32* @testIt(i32* %6), !dbg !46
  store i32* %7, i32** %py, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata !{i32** %z}, metadata !47), !dbg !48
  %8 = call i32* @testIt(i32* %c), !dbg !49
  store i32* %8, i32** %z, align 8, !dbg !49
  %9 = load i32** %px, align 8, !dbg !50
  store i32* %9, i32** %py, align 8, !dbg !50
  ret i32 0, !dbg !51
}

declare i32 @printf(i8*, ...)

declare i32 @__isoc99_scanf(i8*, ...)

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 720913, i32 0, i32 12, metadata !"tests/t.c", metadata !"/home/noundou/ece750-project/src/CTaint", metadata !"Debian clang version 3.0-6.2 (tags/RELEASE_30/final) (based on LLVM 3.0)", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13}
!5 = metadata !{i32 720942, i32 0, metadata !6, metadata !"testIt", metadata !"testIt", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i32* (i32*)* @testIt, null, null, metadata !11} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 720937, metadata !"tests/t.c", metadata !"/home/noundou/ece750-project/src/CTaint", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9}
!9 = metadata !{i32 720911, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 720932, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 720942, i32 0, metadata !6, metadata !"main", metadata !"main", metadata !"", metadata !6, i32 11, metadata !14, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !16} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !10}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!18 = metadata !{i32 721153, metadata !5, metadata !"y", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!19 = metadata !{i32 4, i32 18, metadata !5, null}
!20 = metadata !{i32 721152, metadata !21, metadata !"buf", metadata !6, i32 5, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!21 = metadata !{i32 720907, metadata !5, i32 4, i32 21, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!22 = metadata !{i32 720911, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 720932, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!24 = metadata !{i32 5, i32 9, metadata !21, null}
!25 = metadata !{i32 5, i32 15, metadata !21, null}
!26 = metadata !{i32 7, i32 3, metadata !21, null}
!27 = metadata !{i32 721153, metadata !13, metadata !"argc", metadata !6, i32 16777226, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 10, i32 14, metadata !13, null}
!29 = metadata !{i32 721153, metadata !13, metadata !"argv", metadata !6, i32 33554442, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 720911, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ]
!31 = metadata !{i32 10, i32 26, metadata !13, null}
!32 = metadata !{i32 721152, metadata !33, metadata !"x", metadata !6, i32 12, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!33 = metadata !{i32 720907, metadata !13, i32 11, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 12, i32 7, metadata !33, null}
!35 = metadata !{i32 721152, metadata !33, metadata !"y", metadata !6, i32 13, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!36 = metadata !{i32 13, i32 7, metadata !33, null}
!37 = metadata !{i32 721152, metadata !33, metadata !"c", metadata !6, i32 14, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!38 = metadata !{i32 14, i32 7, metadata !33, null}
!39 = metadata !{i32 15, i32 3, metadata !33, null}
!40 = metadata !{i32 16, i32 3, metadata !33, null}
!41 = metadata !{i32 721152, metadata !33, metadata !"px", metadata !6, i32 18, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 18, i32 8, metadata !33, null}
!43 = metadata !{i32 18, i32 15, metadata !33, null}
!44 = metadata !{i32 721152, metadata !33, metadata !"py", metadata !6, i32 19, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!45 = metadata !{i32 19, i32 8, metadata !33, null}
!46 = metadata !{i32 19, i32 13, metadata !33, null}
!47 = metadata !{i32 721152, metadata !33, metadata !"z", metadata !6, i32 20, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 20, i32 8, metadata !33, null}
!49 = metadata !{i32 20, i32 12, metadata !33, null}
!50 = metadata !{i32 22, i32 3, metadata !33, null}
!51 = metadata !{i32 24, i32 3, metadata !33, null}
