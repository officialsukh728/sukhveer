import 'package:start_programing/helper.dart';

void main() {
  printLog(" Enter your number = ");
  double lep = scanLog<double>();

  int remainder = (lep % 400 == 0)
      ? 1
      : (lep % 100 == 0)
          ? 2
          : (lep % 4 == 0)
              ? 3
              : 4;

  switch (remainder) {
    case 1:
      printLog(" leap year\n");
      break;
    case 2:
      printLog(" not leap year\n");
      break;
    case 3:
      printLog(" leap year\n");
      break;
    default:
      printLog(" not leap year\n");
      break;
  }
}
