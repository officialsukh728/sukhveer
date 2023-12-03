import 'package:start_programing/helper.dart';

void main() {
  printLog("Enter the number =");
  double start = scanLog<double>();
  printLog("Enter the number =");
  double end = scanLog<double>();
  double ans = (start + end) / 2;
  print(ans);
}

