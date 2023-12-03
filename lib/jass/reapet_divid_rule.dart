import 'package:start_programing/helper.dart';

void main () {
  String string="";
  printLog("enter your number = ");
  double a = scanLog<double>();
  printLog("enter your number = ");
  double b = scanLog<double>();
  // printLog("enter your number");
  // double c = scanLog<double>();
  printLog("value of % = ${a % b}\n");
  printLog("value of / = ${a / b}\n");
  printLog("value of ~/ = ${a ~/ b}\n");
}
// class = TotalAmount()
// method or function = totalAmount()
// variable = totalAmount
