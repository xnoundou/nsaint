
MAIN=main

ir:
	clang -S -emit-llvm ${MAIN}.c

main: main.c
	clang -g -o main ${MAIN}.c

indent:
	astyle --indent=spaces=2 --brackets=linux $F

clean:
	rm -f ${MAIN} ${MAIN}.s ${MAIN}.o
