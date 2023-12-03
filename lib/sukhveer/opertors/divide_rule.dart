import 'package:start_programing/helper.dart';

void main(){
  printLog("Enter your number =");
  double ab=scanLog<double>();
  printLog("Enter your number =");
  double bc=scanLog<double>();
  print("Ans /=${ab/bc}\n");
  print("Ans ~/=${ab~/bc}\n");
  print("Ans %=${ab%bc}\n");

}