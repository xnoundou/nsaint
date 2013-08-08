#include "stdio.h"
#include "assert.h"

int gcd ( int a , int b ) {
  int c ;
  int inv1 = 0;
  while (b > 0) {    
    c = a % b;
    a = b;
    b = c;

    /* INV: (a > c) && (b > c) */

    printf("a: %d, b: %d\n", a, b);
    inv1 = (a >= c) && (b >= c);
    assert( inv1 );
  }
  return a ;
}

int main(int argc, char * argv[]){
  int a = 10;
  int b = 15;
  int div = gcd (10, 15);
  printf("Result from gcd: %d\n", div);
  return 0;
}
