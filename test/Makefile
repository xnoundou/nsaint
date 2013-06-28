
MAIN=main

ir:
	clang -S -emit-llvm ${MAIN}.c

main: main.c
	clang -g -o main ${MAIN}.c

clean:
	rm -f ${MAIN} ${MAIN}.s ${MAIN}.o
