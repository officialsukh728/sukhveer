import 'package:start_programing/helper.dart';

void main(){
  printLog("enter the number = ");
  int p = scanLog<int>();
  int r=0;
  if(r>p){
    print("enter the number is negitive");
  }else if (r<p){
    print("the enter number is positive");
  }else{
    print("the number is zero");
  }
}