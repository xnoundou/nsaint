
gcd: gcd.c
	gcc -g -Wall gcd.c -o gcd

run-gcd:
	./gcd

daikon: gcd
	kvasir-dtrace `which gcd`
