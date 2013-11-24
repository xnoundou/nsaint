#include <stdio.h>
#include <stdlib.h>

char *testIt(int *y) {
  char *buf = malloc(sizeof(char) * 10);
  scanf("%s", buf);
  return buf;
}

int main()
{
  int x;
  int y;
  printf("Enter an integer now: ");
  scanf("%d", &x);
  int *px = &x;
  int *py = px;
  char *z = testIt(py);
  //py = px;

  return 0;
}

