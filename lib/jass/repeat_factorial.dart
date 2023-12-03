import 'package:start_programing/helper.dart';

void main(){
  printLog("enter the number  = ");
  int a =scanLog<int>();
  int total=1;
  for(int i=a;i>0;i--){
    total=total*i;

  }printLog(total);
}