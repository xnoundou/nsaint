; ModuleID = 't.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"Enter an integer now: \00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

define i8* @testIt(i32* %y) nounwind uwtable {
  %1 = alloca i32*, align 8
  %buf = alloca i8*, align 8
  store i32* %y, i32** %1, align 8
  %2 = call noalias i8* @malloc(i64 10) nounwind
  store i8* %2, i8** %buf, align 8
  %3 = load i8** %buf, align 8
  %4 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i8* %3)
  %5 = load i8** %buf, align 8
  ret i8* %5
}

declare noalias i8* @malloc(i64) nounwind

declare i32 @__isoc99_scanf(i8*, ...)

define i32 @main() nounwind uwtable {
  %1 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %px = alloca i32*, align 8
  %py = alloca i32*, align 8
  %z = alloca i8*, align 8
  store i32 0, i32* %1
  %2 = call i32 (i8*, ...)* @rpl_printf(i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0))
  %3 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), i32* %x)
  store i32* %x, i32** %px, align 8
  %4 = load i32** %px, align 8
  store i32* %4, i32** %py, align 8
  %5 = load i32** %py, align 8
  %6 = call i8* @testIt(i32* %5)
  store i8* %6, i8** %z, align 8
  ret i32 0
}

declare i32 @rpl_printf(i8*, ...)
