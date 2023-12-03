int sum({required int a, required int b}) {
  int c = a + b;
  return c;
}

int multpal({required int a, required int b}) {
  int c = a * b;
  return c;
}

double divied1({required int a, required int b}) {
  double c = a / b;
  return c;
}

int minus({required int a, required int b}) {
  int c = a - b;
  return c;
}

int divied2({required int a, required int b}) {
  int c = a ~/ b;
  return c;
}

int persent({required int a, required int b}) {
  int c = a % b;
  return c;
}

void main() {
  var a = 30;
  var b = 20;
  int c = sum( b: b, a: 0);
  print(c);
  double s = divied1(a: a, b: b);
  print(s);
  int p = minus(a: a, b: b);
  print(p);
  int m = multpal(a: a, b: b);
  print(m);
  int j = divied2(a: a, b: b);
  print(j);
  int e = persent(a: a, b: b);
  print(e);
}
