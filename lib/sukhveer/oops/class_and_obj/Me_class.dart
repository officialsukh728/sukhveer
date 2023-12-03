class Me {
  static int _income = 0;

  int get getIncome => _income;

  set setIncome(int amount) => _income = _income + amount;

  void incomePrint() {
    print("income =$_income");
  }
}

void main() {
  Me s = Me();
  s.setIncome = 10; // 10 = 0 + 10;
  s.incomePrint(); // 10
  s.setIncome = 100; // 110 = 10 + 100;
  s.incomePrint(); // 110
  s.setIncome = -50; // 110 = 110 - 50;
  s.incomePrint(); // 60
  s.setIncome = 40; // 100 = 60 + 40 ;
  print("income =${s.getIncome}"); // 100
}
