import 'package:start_programing/helper.dart';

void main() {
  printLog("enter then number = ");
  int start = scanLog<int>();
  printLog("enter then number = ");
  int end = scanLog<int>();
  var z = (start + end) / 2;
  var ave = ((end - start) + 1) * z;
  var avr =(ave~/1);
  printLog(avr);
}
