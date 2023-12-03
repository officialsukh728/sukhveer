import 'package:start_programing/helper.dart';

void divide1() {
  int a = 10;
  int b = 20;
  print(" divide = ${a / b}");
}

 void divide2(int a, int b) {
  print("divide=${a / b}");
}

 double divide3() {
  int x = 10;
  int y = 20;
   return x / y;

}

 double divide4(int a, int b) {
  return a / b;
}

/// named function
double divide5({required int a, required int b}) {
  double c = a / b;
  return c;
}

/// optional
double divide6({required int a, int b = 20}) {
  double c = a / b;
  return c;
}

void main() {
  printLog("Enter your number = ");
  int a = scanLog<int>();
  printLog("Enter your number =");
  int b = scanLog<int>();
}
