import 'package:start_programing/helper.dart';

void main() {
  printLog("Enter your number =");
  int a = scanLog<int>();
  for (int b = 1; b <= a; b++) {
    for (int c = b; c < a; c++) {
      printLog(" ");
    }
    for (int d = b; d > 0; d--) {
      printLog("*");
    }
    for (int d = b; d > 1; d--) {
      printLog("*");
    }
    print("");
  }
}
