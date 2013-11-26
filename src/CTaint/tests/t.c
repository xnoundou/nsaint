#include <stdio.h>
#include <stdlib.h>

char *testIt(char *y) {
  char *buf = malloc(sizeof(char) * 10);
  //scanf("%s", buf);
  return y;
}

int main(int argc, char *argv[])
{
  int x;
  int y;
  char c;
  printf("Enter an integer now: ");
  //scanf("%d", &x);
  scanf("%s", &c);
  int *px = &x;
  int *py = px;
  char *z = testIt(&c);
  char *pz = z;
  py = px;

  return 0;
}

