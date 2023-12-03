import 'dart:convert';

import 'package:start_programing/helper.dart';

void main() {
  /*List<int> one = <int>[11, 2, 33, 44, 56, 6, 07, 80, 9, 10];
  for (int b = 0; b < one.length; b++) {
    print(one[b]);
  }
  for (var c in one) {
    print("int list $c");
  }
  one.forEach((t) {
    print(t);
  });*/
  for (int column = 1; column < 6; column++) {
    for (int row = column; row > 0; row--) {
      printLog(" $row ");
    }
    print("");
  }
}
/// 43210
/// .
/// =>
