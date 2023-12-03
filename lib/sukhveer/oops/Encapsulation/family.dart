class Family {
  int _income = 0;

  int get getIncome => _income;

  set setIncome(int amount) => _income = _income + amount;

  Family._();

  static Family get instance => Family._();

  factory Family() => instance;

  void father(int amount) {
    if (amount < 0) return;
    _income = _income + amount;
  }

  void child(int amount) {
    if (amount < 0) return;
    _income = _income + amount;
  }

  void mother(int amount) {
    if (amount < 0) return;
    _income = _income - amount;
  }
}

void main() {
  Family f = Family.instance;
  f.child(100);
  f.father(400);
  f.mother(50);
  f.mother(100);
  f.father(300);
  f.child(50);
  print("Income => ${f.getIncome}");
  f.mother(700);
  print("Income => ${f.getIncome}");
  f.setIncome = -1000;
  print("Income => ${f.getIncome}");
}
