#include <stdio.h>
#include <stdlib.h>

/* Point 1 */
char *f3(char *s)
{
  return s;
}

/* Point 2 */
char *f2(char *s)
{
  return f3(s);
}
/* Point 3 */
char *f1(char *s)
{
  return f2(s);
}
int main()
{
  char *s, *unclean;
  /* Point 0 */
  unclean = getenv("PATH");
  s = f1(unclean);
  printf(s);
  /* Point 4 */
  /* Point 5 */
}

