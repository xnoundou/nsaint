#include <stdio.h>
#include <stdlib.h>

int compute(int *);
int odd(int);
int even(int);
int main();

int compute(int *x)
{
  int sum, i;
  if (*x == 2){
    printf("Enter an integer now: ");
    scanf("%d", &sum);
  }
  else
    sum = 0;
  for(i = 0; i < sum; ++ i)
    *x += sum;
  return sum;
}

int odd(int x)
{
  if (x == 1)
    return 0;
  else
    return even(x - 1);
  }

int even(int x)
{
  if (x == 0)
    return 1;
  else
    return odd(x - 1);
}

int main()
{
  int x, b1, b2, y;
  char str[10];
  char *d = malloc(sizeof(char)*25);
  atof(str);
  free(d);
  printf("Enter an integer now: ");
  scanf("%d", &x);
  b1 = even(x);
  b2 = odd(3);
  y = compute(&x);
  sprintf(str, "%d", y);
  return 0;
}

