/// public function
void sum1() {
  int a = 10;
  int b = 20;
  print(" sum = ${a + b}");
}

class Arithmatic {
  /// protected methods & variables
  int x = 0;
  int y = 0;

  Arithmatic._();

  static final Arithmatic _instance = Arithmatic._();

  static final Arithmatic instance = _instance;

  factory Arithmatic() => _instance;

  /// private method
  void _sum() {
    /// function calling
    sum1();
  }

  void sum() {
    print("sum = ${x + y}");
  }

  void sub() {
    print("sub = ${x - y}");
  }

  void maitpal() {
    print("maitpal = ${x * y}");
  }

  void divide() {
    print("divide =${x / y}");
  }

  void module() {
    print("module = ${x ~/ y}");
  }
}

/// modifer
/// public
/// private
/// protected
void main() {
  Arithmatic.instance.y = 200;
  Arithmatic.instance.x = 600;
  Arithmatic.instance.sum();
  Arithmatic.instance.sub();
  Arithmatic.instance.divide();
  Arithmatic.instance.maitpal();
  Arithmatic.instance.module();
  print(">>>>>>>>>>>>>>>>>>");
  Arithmatic objNew1 = Arithmatic();
  objNew1.x = 55;
  objNew1.y = 44;
  objNew1.sum();
  objNew1.sub();
  objNew1.divide();
  objNew1.maitpal();
  objNew1.module();
  print(">>>>>>>>>>>>>>>>>>");
  Arithmatic objNew2 = Arithmatic();
  objNew2.sum();
  objNew2.sub();
  objNew2.divide();
  objNew2.maitpal();
  objNew2.module();
  print(">>>>>>>>>>>>>>>>>>");
  Arithmatic objNew3 = Arithmatic();
  objNew3.sum();
  objNew3.sub();
  objNew3.divide();
  objNew3.maitpal();
  objNew3.module();
  print(">>>>>>>>>>>>>>>>>>");
  Arithmatic obj4 = Arithmatic();
  obj4.sum();
  obj4.sub();
  obj4.divide();
  obj4.maitpal();
  obj4.module();
}
