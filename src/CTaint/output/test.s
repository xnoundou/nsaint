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
  %2 = load i32** %1, align 8
  %3 = load i32* %2
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0))
  %7 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %sum)
  br label %9

; <label>:8                                       ; preds = %0
  store i32 0, i32* %sum, align 4
  br label %9

; <label>:9                                       ; preds = %8, %5
  store i32 0, i32* %i, align 4
  br label %10

; <label>:10                                      ; preds = %19, %9
  %11 = load i32* %i, align 4
  %12 = load i32* %sum, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %10
  %15 = load i32* %sum, align 4
  %16 = load i32** %1, align 8
  %17 = load i32* %16
  %18 = add nsw i32 %17, %15
  store i32 %18, i32* %16
  br label %19

; <label>:19                                      ; preds = %14
  %20 = load i32* %i, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %i, align 4
  br label %10

; <label>:22                                      ; preds = %10
  %23 = load i32* %sum, align 4
  ret i32 %23
}

declare i32 @printf(i8*, ...)

declare i32 @__isoc99_scanf(i8*, ...)

define i32 @odd(i32 %x) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i32 0, i32* %1
  br label %10

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = sub nsw i32 %7, 1
  %9 = call i32 @even(i32 %8)
  store i32 %9, i32* %1
  br label %10

; <label>:10                                      ; preds = %6, %5
  %11 = load i32* %1
  ret i32 %11
}

define i32 @even(i32 %x) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i32 1, i32* %1
  br label %10

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = sub nsw i32 %7, 1
  %9 = call i32 @odd(i32 %8)
  store i32 %9, i32* %1
  br label %10

; <label>:10                                      ; preds = %6, %5
  %11 = load i32* %1
  ret i32 %11
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
  %2 = call noalias i8* @malloc(i64 25) nounwind
  store i8* %2, i8** %d, align 8
  %3 = getelementptr inbounds [10 x i8]* %str, i32 0, i32 0
  %4 = call double @atof(i8* %3) nounwind readonly
  %5 = load i8** %d, align 8
  call void @free(i8* %5) nounwind
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0))
  %7 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %x)
  %8 = load i32* %x, align 4
  %9 = call i32 @even(i32 %8)
  store i32 %9, i32* %b1, align 4
  %10 = call i32 @odd(i32 3)
  store i32 %10, i32* %b2, align 4
  %11 = call i32 @compute(i32* %x)
  store i32 %11, i32* %y, align 4
  %12 = getelementptr inbounds [10 x i8]* %str, i32 0, i32 0
  %13 = load i32* %y, align 4
  %14 = call i32 (i8*, i8*, ...)* @sprintf(i8* %12, i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32 %13) nounwind
  ret i32 0
}

declare noalias i8* @malloc(i64) nounwind

declare double @atof(i8*) nounwind readonly

declare void @free(i8*) nounwind

declare i32 @sprintf(i8*, i8*, ...) nounwind
