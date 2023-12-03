import 'package:start_programing/helper.dart';

void main (){
  printLog("Enter table number =");
  int a=scanLog<int>();
  for (int b=1;b<=10;b++){
    var y=(b*a);
    print(y);
  }
}