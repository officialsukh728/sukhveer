import 'package:start_programing/helper.dart';

void main(){
  printLog("enter your numer = ");
  int R = scanLog<int>();
  printLog("enter your number = ");
  int T = scanLog<int>();
  (R<T) ? print ("R is lesser than T")
      : print ("R is not lesser than T");
}