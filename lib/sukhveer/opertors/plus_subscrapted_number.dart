import 'package:start_programing/helper.dart';
void main() {
  printLog("Enter your number =");
  int start = scanLog<int>();
  if (start > 0) {
    print("positive");
  } else if (start < 0) {
    print("Negative");
  } else {
    print("zero");
  }
}
