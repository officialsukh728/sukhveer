import 'package:start_programing/helper.dart';

void main() {
  printLog("enter your number = ");
  double Rj = scanLog<double>();
  (Rj % 2 == 0)
      ? print("enter number is even ")
      : print("enter number is odd ");
}
