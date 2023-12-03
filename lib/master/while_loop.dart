import 'package:start_programing/helper.dart';

void main() {
  int a = 1;
  print("Dart while loop example");
  while (a < 6) {
    printLog("$a ");
    ++a;
  }
  print("The while loop is terminated");
  print("<><><><><><><><><><><><><><><><><><><><><><><><><><>");
  print("Dart do-while loop example");
  int b = 10;
  do {
    print(b);
    b++;
  } while (b <= 20);
  print("The do-while loop is terminated");

  List<String> data = <String>[];
  List<int> intList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<String> stringList = <String>["a", "b", "c", "d", "e"];
  List<bool> boolList = <bool>[true, false, true, true, false, false, true];
  List<dynamic> dynamicList = <dynamic>[1, 1.0, 0, false, "sukh", 1, null, false];

}
