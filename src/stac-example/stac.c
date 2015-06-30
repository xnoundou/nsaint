#include <stdio.h>

int main(int argc, char *argv[]);
void testCond(int *y);
int even(int *x);
int odd(int x);
int compute(int x);

int compute(int x) {
  int sum, i;
  if (x == 2) scanf("%d", &sum);
  else sum = 0;
  for(i = 0; i < x; ++ i)
    sum += i;
  return sum;
}

int odd(int x) {
  if (x == 1) return 0;
  else return -1;
}

int even(int *x) {
  if (x == 0) return 1;
  else return odd(*x - 1);
}

void testCond(int *y) {
  if (!y) return;
  else if (*y > 9)
    printf("Implicit taint propagation");
}

int main(int argc, char *argv[]) {
  int x, y, b1, b2;
  scanf("%d", &x);
  b1 = even(&x);
  b2 = odd(x);
  y = compute(x);
  testCond(&y);
  return 0;
}
