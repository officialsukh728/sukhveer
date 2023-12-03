import 'package:start_programing/helper.dart';

void main (){
  printLog("enter your number = ");
  int R = scanLog<int>();
  printLog("enter your number = ");
  int T = scanLog<int>();
  (R>T) ? print ("R is greater than T ")
  : print ("R is not greater than T ");
}