#include <stdio.h>
#include <stdlib.h>

int *testIt(int *y) {
  char *buf = malloc(sizeof(char) * 10);
  //scanf("%s", buf);
  return y;
}

int t2(int argc, char *argv[])
{
  int x;
  int y;
  int c;
  printf("Enter an integer now: %d", 98);
  scanf("%d", &x);
  //scanf("%s", &c);
  int *px = &x;
  int *py = testIt(px);
  int *z = testIt(&c);
  //int *pz = z;
  py = px;

  return 0;
}

