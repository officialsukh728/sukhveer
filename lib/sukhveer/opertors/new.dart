import 'package:start_programing/helper.dart';

void main() {
  /* printLog("Enter your number = ");
  int end = scanLog<int>();
  //printLog("Enter your number =");
  // int end=scanLog<int>();

//  for (int a = end; a >= 1; a--) {
  if (end <= 0) {
    print("please enter number positive");
    return;
  }
  for (int a = 1; a <= end; a++) {
    if (a % 2 == 0) {
      print("Evan number = $a");
    } else {
      print("Odd number = $a");
    }
  }
  int x = 10;
  int y = 5;
  (x > y) ? print(x) : print(false);
  // && || !*/

/*  int z = 5;
 int z1 = 5;
  if (z == 0 && !(z1 == 0)) {
    print("true");
  } else {
    print("false");
  }
  (z1 == 0 || z == 0) ? print("true") : print("false");*/
  List<int> intList = <int>[1, 2, 85, 4, 55, 6, 7, 89, 5];
  List<bool> boolList = <bool>[true, false, true];
  List<String> stringList = <String>['sukhveer', 'jaspal', 'sukhchain'];
  List<dynamic> dynamicList = <dynamic>[1, 2.3, 'sukh', true];
 /* intList.forEach((element) {
    print(element);
  });*/
 /* boolList.forEach((element) {
    print(element);
  });*/
  for (var v in stringList) {
    print(v);
  }

}
