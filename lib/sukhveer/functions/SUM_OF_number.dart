import 'package:start_programing/helper.dart';

void main() {
  ///two number
  printLog('Enter your two number =');
  int s = scanLog<int>();
  int y = (s ~/ 10);
  int t = (s % 10);
  int ans = (y + t);
  print("sum of two digit number = $ans");

  /// three number
  printLog("=<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
  printLog("\n Enter your three number  =");
  int p = scanLog<int>();
  int r = (p ~/ 100);
  int d = (p % 100);
  int k = (d ~/ 10);
  int h = (d % 10);
  int ans2 = (r + k + h);


  print(" sum of three digit number = $ans2");
}
