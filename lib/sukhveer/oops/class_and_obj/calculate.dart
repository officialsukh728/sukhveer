
class Calculate {
  final int start;
  // final int end;

  //Calculate({required this.start, required this.end});

 Calculate(this.start,/* this.end*/);
  int multi({
    required int start,
    required int end,
  }) =>
      start * end;

  int sum({required int start, required int end}) => start + end;

  double divide({required double start, required double end}) => start / end;

  int minus({required int start, required int end}) => start - end;
}

void main() {
  // Calculate calculate = Calculate(start: 55, end: 5);
  Calculate calculate = Calculate(55);
  int sum = calculate.sum(start: 55, end: 55);
  print("sum =$sum");
  int minus = calculate.minus(start: 44, end: 22);
  print("minus =$minus");
  int multi = calculate.multi(start: 14, end: 55);
  print("multi =$multi");
  double divide = calculate.divide(start: 42, end: 2);
  print("divide =$divide");
}