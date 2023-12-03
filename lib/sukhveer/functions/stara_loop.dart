import 'package:start_programing/helper.dart';

void main (){
  for (int column = 1; column < 6; column++) {
    for (int row = column; row > 0; row--) {
      printLog(" * ");
    }
    print("");
  }
}