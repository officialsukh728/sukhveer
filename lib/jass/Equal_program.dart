import 'package:start_programing/helper.dart';

void main(){
  print("enter your number = ");
  int R = scanLog<int>();
  print("enter your number  = ");
  int T = scanLog<int>();
  (R==T) ? print("R is Eqaul to T")
      : print ("R is not Eqaul to T");
}