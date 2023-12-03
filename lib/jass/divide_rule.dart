import 'dart:io';

void main() {
  stdout.write("Enter your number = ");
  String g = stdin.readLineSync() ?? "0";
  double devide1 = double.tryParse(g) ?? 0;
  stdout.write("Enter your number = ");
  String m = stdin.readLineSync() ?? "0";
  double devid2 = double.tryParse(m) ?? 0;
  stdout.write("value of / = ${devide1 / devid2}\n");
  stdout.write("value of ~/ = ${devide1 ~/ devid2}\n");
  stdout.write("value of % = ${devide1 % devid2}\n");
}