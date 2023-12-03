import 'package:start_programing/helper.dart';

void main() {
  printLog("enter the number = ");
  int start = scanLog<int>();
  printLog("enter your number =");
  int end = scanLog<int>();
  int sum = 0;
  for (int i = start; i <= end; i++) {
    sum = sum + i;
  }
  printLog(sum);
}
