; ModuleID = 'tests/test.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Enter an integer now: \00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

define i32 @compute(i32* %x) nounwind uwtable {
  %1 = alloca i32*, align 8
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %x, i32** %1, align 8
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !21), !dbg !23
  call void @llvm.dbg.declare(metadata !{i32* %sum}, metadata !24), !dbg !26
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !27), !dbg !28
  %2 = load i32** %1, align 8, !dbg !29
  %3 = load i32* %2, !dbg !29
  %4 = icmp eq i32 %3, 2, !dbg !29
  br i1 %4, label %5, label %8, !dbg !29

; <label>:5                                       ; preds = %0
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0)), !dbg !30
  %7 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %sum), !dbg !32
  br label %9, !dbg !33

; <label>:8                                       ; preds = %0
  store i32 0, i32* %sum, align 4, !dbg !34
  br label %9

; <label>:9                                       ; preds = %8, %5
  store i32 0, i32* %i, align 4, !dbg !35
  br label %10, !dbg !35

; <label>:10                                      ; preds = %19, %9
  %11 = load i32* %i, align 4, !dbg !35
  %12 = load i32* %sum, align 4, !dbg !35
  %13 = icmp slt i32 %11, %12, !dbg !35
  br i1 %13, label %14, label %22, !dbg !35

; <label>:14                                      ; preds = %10
  %15 = load i32* %sum, align 4, !dbg !37
  %16 = load i32** %1, align 8, !dbg !37
  %17 = load i32* %16, !dbg !37
  %18 = add nsw i32 %17, %15, !dbg !37
  store i32 %18, i32* %16, !dbg !37
  br label %19, !dbg !37

; <label>:19                                      ; preds = %14
  %20 = load i32* %i, align 4, !dbg !38
  %21 = add nsw i32 %20, 1, !dbg !38
  store i32 %21, i32* %i, align 4, !dbg !38
  br label %10, !dbg !38

; <label>:22                                      ; preds = %10
  %23 = load i32* %sum, align 4, !dbg !39
  ret i32 %23, !dbg !39
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @printf(i8*, ...)

declare i32 @__isoc99_scanf(i8*, ...)

define i32 @odd(i32 %x) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !40), !dbg !41
  %3 = load i32* %2, align 4, !dbg !42
  %4 = icmp eq i32 %3, 1, !dbg !42
  br i1 %4, label %5, label %6, !dbg !42

; <label>:5                                       ; preds = %0
  store i32 0, i32* %1, !dbg !44
  br label %10, !dbg !44

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4, !dbg !45
  %8 = sub nsw i32 %7, 1, !dbg !45
  %9 = call i32 @even(i32 %8), !dbg !45
  store i32 %9, i32* %1, !dbg !45
  br label %10, !dbg !45

; <label>:10                                      ; preds = %6, %5
  %11 = load i32* %1, !dbg !46
  ret i32 %11, !dbg !46
}

define i32 @even(i32 %x) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !47), !dbg !48
  %3 = load i32* %2, align 4, !dbg !49
  %4 = icmp eq i32 %3, 0, !dbg !49
  br i1 %4, label %5, label %6, !dbg !49

; <label>:5                                       ; preds = %0
  store i32 1, i32* %1, !dbg !51
  br label %10, !dbg !51

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4, !dbg !52
  %8 = sub nsw i32 %7, 1, !dbg !52
  %9 = call i32 @odd(i32 %8), !dbg !52
  store i32 %9, i32* %1, !dbg !52
  br label %10, !dbg !52

; <label>:10                                      ; preds = %6, %5
  %11 = load i32* %1, !dbg !53
  ret i32 %11, !dbg !53
}

define i32 @main() nounwind uwtable {
  %1 = alloca i32, align 4
  %x = alloca i32, align 4
  %b1 = alloca i32, align 4
  %b2 = alloca i32, align 4
  %y = alloca i32, align 4
  %str = alloca [10 x i8], align 1
  %d = alloca i8*, align 8
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata !{i32* %x}, metadata !54), !dbg !56
  call void @llvm.dbg.declare(metadata !{i32* %b1}, metadata !57), !dbg !58
  call void @llvm.dbg.declare(metadata !{i32* %b2}, metadata !59), !dbg !60
  call void @llvm.dbg.declare(metadata !{i32* %y}, metadata !61), !dbg !62
  call void @llvm.dbg.declare(metadata !{[10 x i8]* %str}, metadata !63), !dbg !68
  call void @llvm.dbg.declare(metadata !{i8** %d}, metadata !69), !dbg !71
  %2 = call noalias i8* @malloc(i64 25) nounwind, !dbg !72
  store i8* %2, i8** %d, align 8, !dbg !72
  %3 = getelementptr inbounds [10 x i8]* %str, i32 0, i32 0, !dbg !73
  %4 = call double @atof(i8* %3) nounwind readonly, !dbg !73
  %5 = load i8** %d, align 8, !dbg !74
  call void @free(i8* %5) nounwind, !dbg !74
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0)), !dbg !75
  %7 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %x), !dbg !76
  %8 = load i32* %x, align 4, !dbg !77
  %9 = call i32 @even(i32 %8), !dbg !77
  store i32 %9, i32* %b1, align 4, !dbg !77
  %10 = call i32 @odd(i32 3), !dbg !78
  store i32 %10, i32* %b2, align 4, !dbg !78
  %11 = call i32 @compute(i32* %x), !dbg !79
  store i32 %11, i32* %y, align 4, !dbg !79
  %12 = getelementptr inbounds [10 x i8]* %str, i32 0, i32 0, !dbg !80
  %13 = load i32* %y, align 4, !dbg !80
  %14 = call i32 (i8*, i8*, ...)* @sprintf(i8* %12, i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32 %13) nounwind, !dbg !80
  ret i32 0, !dbg !81
}

declare noalias i8* @malloc(i64) nounwind

declare double @atof(i8*) nounwind readonly

declare void @free(i8*) nounwind

declare i32 @sprintf(i8*, i8*, ...) nounwind

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 720913, i32 0, i32 12, metadata !"tests/test.c", metadata !"/home/noundou/ece750-project/src/CTaint", metadata !"Debian clang version 3.0-6.2 (tags/RELEASE_30/final) (based on LLVM 3.0)", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !15, metadata !18}
!5 = metadata !{i32 720942, i32 0, metadata !6, metadata !"compute", metadata !"compute", metadata !"", metadata !6, i32 10, metadata !7, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i32 (i32*)* @compute, null, null, metadata !10} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 720937, metadata !"tests/test.c", metadata !"/home/noundou/ece750-project/src/CTaint", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9}
!9 = metadata !{i32 720932, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 720942, i32 0, metadata !6, metadata !"odd", metadata !"odd", metadata !"", metadata !6, i32 24, metadata !7, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i32 (i32)* @odd, null, null, metadata !13} ; [ DW_TAG_subprogram ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 720942, i32 0, metadata !6, metadata !"even", metadata !"even", metadata !"", metadata !6, i32 32, metadata !7, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i32 (i32)* @even, null, null, metadata !16} ; [ DW_TAG_subprogram ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!18 = metadata !{i32 720942, i32 0, metadata !6, metadata !"main", metadata !"main", metadata !"", metadata !6, i32 40, metadata !7, i1 false, i1 true, i32 0, i32 0, i32 0, i32 0, i1 false, i32 ()* @main, null, null, metadata !19} ; [ DW_TAG_subprogram ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!21 = metadata !{i32 721153, metadata !5, metadata !"x", metadata !6, i32 16777225, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!22 = metadata !{i32 720911, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 9, i32 18, metadata !5, null}
!24 = metadata !{i32 721152, metadata !25, metadata !"sum", metadata !6, i32 11, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!25 = metadata !{i32 720907, metadata !5, i32 10, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 11, i32 7, metadata !25, null}
!27 = metadata !{i32 721152, metadata !25, metadata !"i", metadata !6, i32 11, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!28 = metadata !{i32 11, i32 12, metadata !25, null}
!29 = metadata !{i32 12, i32 3, metadata !25, null}
!30 = metadata !{i32 13, i32 5, metadata !31, null}
!31 = metadata !{i32 720907, metadata !25, i32 12, i32 15, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 14, i32 5, metadata !31, null}
!33 = metadata !{i32 15, i32 3, metadata !31, null}
!34 = metadata !{i32 17, i32 5, metadata !25, null}
!35 = metadata !{i32 18, i32 7, metadata !36, null}
!36 = metadata !{i32 720907, metadata !25, i32 18, i32 3, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 19, i32 5, metadata !36, null}
!38 = metadata !{i32 18, i32 23, metadata !36, null}
!39 = metadata !{i32 20, i32 3, metadata !25, null}
!40 = metadata !{i32 721153, metadata !12, metadata !"x", metadata !6, i32 16777239, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 23, i32 13, metadata !12, null}
!42 = metadata !{i32 25, i32 3, metadata !43, null}
!43 = metadata !{i32 720907, metadata !12, i32 24, i32 1, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 26, i32 5, metadata !43, null}
!45 = metadata !{i32 28, i32 12, metadata !43, null}
!46 = metadata !{i32 29, i32 3, metadata !43, null}
!47 = metadata !{i32 721153, metadata !15, metadata !"x", metadata !6, i32 16777247, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 31, i32 14, metadata !15, null}
!49 = metadata !{i32 33, i32 3, metadata !50, null}
!50 = metadata !{i32 720907, metadata !15, i32 32, i32 1, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 34, i32 5, metadata !50, null}
!52 = metadata !{i32 36, i32 12, metadata !50, null}
!53 = metadata !{i32 37, i32 1, metadata !50, null}
!54 = metadata !{i32 721152, metadata !55, metadata !"x", metadata !6, i32 41, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 720907, metadata !18, i32 40, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 41, i32 7, metadata !55, null}
!57 = metadata !{i32 721152, metadata !55, metadata !"b1", metadata !6, i32 41, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 41, i32 10, metadata !55, null}
!59 = metadata !{i32 721152, metadata !55, metadata !"b2", metadata !6, i32 41, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 41, i32 14, metadata !55, null}
!61 = metadata !{i32 721152, metadata !55, metadata !"y", metadata !6, i32 41, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 41, i32 18, metadata !55, null}
!63 = metadata !{i32 721152, metadata !55, metadata !"str", metadata !6, i32 42, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 720897, null, metadata !"", null, i32 0, i64 80, i64 8, i32 0, i32 0, metadata !65, metadata !66, i32 0, i32 0} ; [ DW_TAG_array_type ]
!65 = metadata !{i32 720932, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 720929, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!68 = metadata !{i32 42, i32 8, metadata !55, null}
!69 = metadata !{i32 721152, metadata !55, metadata !"d", metadata !6, i32 43, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 720911, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ]
!71 = metadata !{i32 43, i32 9, metadata !55, null}
!72 = metadata !{i32 43, i32 13, metadata !55, null}
!73 = metadata !{i32 44, i32 3, metadata !55, null}
!74 = metadata !{i32 45, i32 3, metadata !55, null}
!75 = metadata !{i32 46, i32 3, metadata !55, null}
!76 = metadata !{i32 47, i32 3, metadata !55, null}
!77 = metadata !{i32 48, i32 8, metadata !55, null}
!78 = metadata !{i32 49, i32 8, metadata !55, null}
!79 = metadata !{i32 50, i32 7, metadata !55, null}
!80 = metadata !{i32 51, i32 3, metadata !55, null}
!81 = metadata !{i32 52, i32 3, metadata !55, null}
