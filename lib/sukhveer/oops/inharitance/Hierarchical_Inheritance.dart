class Grandfather {
  void grandfather() {
    print("grandfather");
  }
}

class Father extends Grandfather {
  void father() {
    print("father ");
  }
}

class Me extends Grandfather {
  void me() {
    super.grandfather();
    print("me");
  }
}
