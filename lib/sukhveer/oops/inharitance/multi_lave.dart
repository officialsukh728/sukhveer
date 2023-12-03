class Grandfather {
  void grandfather() {
    print("grandfather");
  }
}

class Father extends Grandfather {
  void father() {
    super.grandfather();
    print("father");
  }
}

class Me extends Father {
  void me() {
    super.father();
    print("me");
  }
}

class Child extends Me {
  void child() {
    super.me();
    print("child");
  }
}
void main () {
  Child child = Child();
  child.child();
}