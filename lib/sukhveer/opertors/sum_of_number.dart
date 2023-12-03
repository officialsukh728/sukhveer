import 'package:start_programing/helper.dart';

void main() {
  printLog('Enter your number =');
  double start = scanLog<double>();
  printLog("Enter your number =");
  double end = scanLog<double>();
  double avr = ((start + end) / 2);
  double As = ((start - end) + 1) * avr;
  
  print(As);
}
