import 'package:start_programing/helper.dart';

void multpal1() {
  int a = 10;
  int b = 20;
  print(" multpal = ${a * b}");
}

void multpal2(int a, int b) {
  print("multpal=${a * b}");
}

int multpal3() {
  int x = 10;
  int y = 20;
  return x * y;
}

int multpal4(int a, int b) {
  return a * b;
}

/// named function
int multpal5({required int a, required int b}) {
  int c = a * b;
  return c;
}

/// optional
int multpal6({required int a, int b = 20}) {
  int c = a * b;
  return c;
}

void main() {
  printLog("Enter your number =");
  int a = scanLog<int>();
  printLog("Enter your number =");
  int b = scanLog<int>();
}
