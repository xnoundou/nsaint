#include "stdio.h"

int compute(int x)
{
  int sum, i;
  if (x == 2)
    sum = sum * 4;
  else
    sum = 0;
  for(i = 0; i < x; ++ i)
    sum += i;
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
  scanf("%d", &x);
  b1 = even(x);
  b2 = odd(10);
  y = compute(x);
  return 0;
}

