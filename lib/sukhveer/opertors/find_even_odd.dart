import 'dart:io';

void main() {
  stdout.write("Enter the number = ");
  String s = stdin.readLineSync() ?? "0";
  double hello = double.tryParse(s) ?? 0;
  double jass = hello % 2;
  bool sukh = jass == 0;
  sukh ? print("Enter number is even ") : print("Enter number is odd");
}
