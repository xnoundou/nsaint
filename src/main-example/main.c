#include <stdio.h>
#include <stdlib.h>


int compute(int x) {
  int sum, i;
  if (x == 2) scanf("%d", &sum);
  else sum = 0;
  for(i = 0; i < x; ++ i)
    sum += i;
  return sum;
}

int even(int *x) {
  if (x == 0) return x;
}

int main(int argc, char *argv[]) {
  int x, y, b1;
  scanf("%d", &x);
  b1 = even(&x);
  y = compute(0);
  return 0;
}

