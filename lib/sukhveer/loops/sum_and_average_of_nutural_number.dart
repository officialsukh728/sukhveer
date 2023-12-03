import 'package:start_programing/helper.dart';

void main() {
  printLog("Enter the number =");
  int start = scanLog<int>(); // 1
  printLog("Enter the number =");
  int end = scanLog<int>(); // 5
  if (start > end) {
    printLog("wrong number ");
  } else {
    var sum = 0;
    var x = 0;
    for (int i = start; i <= end; i++) {
      x++;
      sum = sum + i;
    }
    print("sum of numbers =$sum");
    num average = sum / x;
    print("average of numbers = $average");
  }
}
