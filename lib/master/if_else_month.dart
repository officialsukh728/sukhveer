//  'January', 'February', 'March', 'April', May'', 'June',
//  'July', 'August', 'September', 'October', 'November', 'December'
import 'package:start_programing/helper.dart';

void main() {
  printLog("Enter your number = ");
  int month = scanLog<int>();
  if (month == 1) {
    printLog('Janvary');
  } else if (month == 2) {
    printLog("fFebrvary");
  } else if (month == 3) {
    printLog("March");
  } else if (month == 4) {
    printLog("April");
  } else if (month == 5) {
    printLog("May");
  } else if (month == 6) {
    printLog("June");
  } else if (month == 7) {
    printLog("July");
  } else if (month == 8) {
    printLog('August');
  } else if (month == 9) {
    printLog("September");
  } else if (month == 10) {
    printLog("October");
  } else if (month == 11) {
    printLog("November");
  } else if (month == 12) {
    printLog("December");
  } else {
    printLog("Wrong number enter");
  }
}