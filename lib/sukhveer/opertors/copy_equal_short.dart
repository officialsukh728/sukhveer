import 'package:start_programing/helper.dart';

void main() {
  printLog("Enter the number  =");
  int one = scanLog<int>();
  int two = 0;
  if (one > two) {
    printLog("Enter  the number is  negitive ");
  } else if (one < two) {
    printLog("Enter the number is positive");
  } else {
    printLog("The number is zero");
  }
}
