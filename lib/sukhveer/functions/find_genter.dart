import 'package:start_programing/helper.dart';
import 'package:start_programing/sukhveer/oops/class_and_obj/class.dart';

void main() {
  printLog("Enter your number =");
  int start = scanLog<int>();
  printLog("Enter your number =");
  int end = scanLog<int>();
  printLog("Enter your number =");
  int last = scanLog<int>();

  if ((start == end) || (end == last) || (last == start)) {
    print("Enter number is ==");
  } else {
    if ((start > end) && (start > last)) {
      print(start);
    } else if ((end > last) && (end > start)) {
      print(end);
    } else {
      print(last);
    }
  }
}
