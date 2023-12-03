import 'package:start_programing/helper.dart';

void main() {
  printLog("Enter your number sukh =");
  int sukh = scanLog<int>();
  printLog("Enter your number jass =");
  int jass = scanLog<int>();
  (sukh == jass)
      ? print("sukh and jass is  Eqval")
      : print("sukh and jass not Eqval");
}
