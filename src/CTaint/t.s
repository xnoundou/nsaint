; ModuleID = 'tests/t.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Enter an integer now: \00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind
define i32* @testIt(i32* %y) #0 {
  %1 = alloca i32*, align 4
  %buf = alloca i8*, align 4
  store i32* %y, i32** %1, align 4
  %2 = call noalias i8* @malloc(i32 10) #2
  store i8* %2, i8** %buf, align 4
  %3 = load i32** %1, align 4
  ret i32* %3
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #0

; Function Attrs: nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %c = alloca i32, align 4
  %px = alloca i32*, align 4
  %py = alloca i32*, align 4
  %z = alloca i32*, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 4
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0))
  %5 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %x)
  store i32* %x, i32** %px, align 4
  %6 = load i32** %px, align 4
  %7 = call i32* @testIt(i32* %6)
  store i32* %7, i32** %py, align 4
  %8 = call i32* @testIt(i32* %c)
  store i32* %8, i32** %z, align 4
  %9 = load i32** %px, align 4
  store i32* %9, i32** %py, align 4
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
