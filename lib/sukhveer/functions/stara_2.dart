import 'package:start_programing/helper.dart';

void main() {
  printLog("Entar the number =");
  int a = scanLog<int>();
  for (int b = 0; b <= a; b++) {
    for ( int c=b ; c > 0; c--) {
      printLog(" *");
    }print(" ");
  }

}
