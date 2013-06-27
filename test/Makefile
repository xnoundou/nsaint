
MAIN=main

ir:
	clang -S -emit-llvm ${MAIN}.c

indent:
	astyle --indent=spaces=2 --brackets=linux $F

clean:
	rm -f ${MAIN}.s ${MAIN}.o
