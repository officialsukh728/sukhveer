import 'package:start_programing/helper.dart';

void main (){
  printLog("enter the number = ");
  int start = scanLog<int>();
  printLog("enter the number =");
  int end = scanLog<int>();
  var a =(start+end)/2;
  printLog(a);
}