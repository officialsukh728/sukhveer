import 'package:start_programing/helper.dart';

void main() {
  printLog("enter year number = ");
  double leap = scanLog<double>();
  if (leap % 100 == 0) {
    if ((leap % 400 == 0)) {
      printLog("leap year");
    } else {
      printLog("not leap year ");
    }
  } else {
    if ((leap % 4 == 0)) {
      printLog("leap year");
    }
  }
}