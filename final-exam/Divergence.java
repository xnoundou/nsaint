/* Discovers a crashing divergence between A and B */

public void test1SUP(){
  A sup = new A();
  sup.add(0);
}

public void test1SUB(){
  A sub = new B(1);
  sub.add(35);
}
