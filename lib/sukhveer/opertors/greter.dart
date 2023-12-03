import 'package:start_programing/helper.dart';

void main() {
  ///   >
  printLog("Enter your number = ");
  int r = scanLog<int>();

  printLog("Enter your number = ");
  int t = scanLog<int>();
  (r > t) ? print("r is greter t") : print("t not is greter r");

  ///    <
  printLog("Enter your number =");
  int y = scanLog<int>();

  printLog("Enter your number =");
  int x = scanLog<int>();
  (y < x) ? print("x is greter y") : print("y not is greter x");
}
