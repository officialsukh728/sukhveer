import 'package:start_programing/helper.dart';

void main() {
  /// 1 attempt
  // printLog("enter the number which repeted = ");
  // int num = scanLog<int>();
  // for (int a = 1; a < num; a++) {
  //   print(a);
  // }
  /// 2 attempt
/*  printLog("enter the number which repeated = ");
  int start = scanLog<int>();
  printLog("enter the number which repeated = ");
  int end = scanLog<int>();
  if (start >= end) {
    print("c.n.d");
  } else {
    for (start; start <= end; start++) {
      print(start);
    }
  }*/  printLog("enter the number which repeated = ");
  int start = scanLog<int>();
  printLog("enter the number which repeated = ");
  int end = scanLog<int>();
  if (start >= end) {
    print("c.n.d");
  } else {
    for (start; start <= end; start++) {
      print(start);
    }
  }
} 
