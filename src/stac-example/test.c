#include <stdio.h>
#include <stdlib.h>

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

  if (sum==2){
    i=9;
    printf("%d", i);
  }

  return *x;
}

int odd(int x)
{
  if (x == 1)
    return 0;
  else
    return even(x - 1);
  }

int even(int *x)
{
  if (x == 0)
    return 1;
  else
    return odd(x - 1);
}

void mysql(int *query, int *x) {
    printf("%d", x);
    printf("%d", query);
  return ;
}

int main(int argc, char *argv[])
{
  int x, b1, y;
  //char str[10];
  //char *d = (char *) malloc(sizeof(char)*25);
  //atof(str);
  //free(d);
  //printf("Enter an integer now: ");
  printf("Wow: %d%f", 4, 4.5);
  scanf("%d", &x);
  b1 = even(&x);
  //b2 = odd(3);
  int ar[2];
  y = compute(&x);
  ar[1] = y;
  //sprintf(str, "%d", y);
  mysql(&y, &ar[1]);
  //mysql(&ar[1]);
  return 0;
}

