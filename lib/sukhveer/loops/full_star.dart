import 'dart:core';


void sum1() {
  var a = 10;
  var b = 20;
  print(" sum = ${a + b}");
}

int sum3({required int a, required int b}) {
  var c = a + b;
  return c;
}

int sum2({required int a, int b = 10}) {
  var c = a + b;
  return c;
}

void main() {
  sum1();
  int b = sum2(a: 5, b: 57);
  print(b);
  int a = 10;

  int d = sum3(a: a, b: b);
  print(d);
}
