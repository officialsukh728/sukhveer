import 'package:start_programing/helper.dart';

void main() {
  printLog("enter your number = ");
  var a = scanLog<int>(); //4
  int total = 1;
  for (int i = a; i > 0; i--) {
     total = total * i;

  }   printLog(total);

}
