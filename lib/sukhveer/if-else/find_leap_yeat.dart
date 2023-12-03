import 'package:start_programing/helper.dart';

void main() {
  /// 2 attempt
 printLog("Enter your number =");
  double lep = scanLog<double>();
  if (lep % 100 == 0) {
    if ((lep % 400 == 0)) {
      printLog(" leap year\n");
    } else {
      printLog(" not leap year\n");
    }
  } else {
    if ((lep % 4 == 0)) {
      printLog(" leap year\n");
    } else {
      printLog(" not leap year\n");
    }
  }

/*  /// second attempt 3 successfully run
  printLog(" Enter your number = ");
  double lep = scanLog<double>();
  if (lep % 400 == 0) {
    printLog(" leap year\n");
  } else if (lep % 100 == 0) {
    printLog(" not leap year\n");
  } else if (lep % 4 == 0) {
    printLog(" leap year\n");
  } else {
    printLog(" not leap year\n");
  }*/
/* /// 4
  final condition = ((lep ~/ 100) + (lep % 100)) % 4 == 0;
  if (condition) {
    printLog(" leap year");
  } else {
    printLog(" not leap year");
  }*/
}