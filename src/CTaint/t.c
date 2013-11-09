#include <stdio.h>
#include <stdlib.h>

int main()
{
  int x;
  int y;
  printf("Enter an integer now: ");
  scanf("%d", &x);
  int *px = &x;
  int *py = px;
  //py = px;

  return 0;
}

