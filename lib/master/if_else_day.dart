import 'package:start_programing/helper.dart';

void main() {
  printLog("Enter Day Number = ");
  int day = scanLog<int>();
  if (day == 1) {
    printLog("Monday");
  } else if (day == 2) {
    printLog("Tuesday");
  } else if (day == 3) {
    printLog("wednesday");
  } else if (day == 4)
    printLog("thursday");
  else if (day == 5)
    printLog("Friday");
  else if (day == 6)
    printLog("saturday");
  else if (day == 7)
    printLog("sunday");
  else {
    printLog("Wrong number enter");
  }
}
