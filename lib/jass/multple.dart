import 'dart:io';

import 'package:start_programing/helper.dart';

void main() {
  stdout.write("Enter your height = ");
  double multiple1 = scanLog<double>();
  stdout.write("Enter your width = ");
  double multiple2 = scanLog<double>();
  stdout.write("volume value is ${multiple1 * multiple2}");
}
