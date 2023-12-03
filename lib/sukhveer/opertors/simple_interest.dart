import 'package:start_programing/helper.dart';

void main() {
  printLog("Enter amount = ");
  double amount = scanLog<double>();
  printLog("Enter rate = ");
  double rate = scanLog<double>();
  printLog("Enter time(year) = ");
  double time = scanLog<double>();
  double interest = (amount * rate * time) / 100;
  printLog("Your interest is $interest");
}
