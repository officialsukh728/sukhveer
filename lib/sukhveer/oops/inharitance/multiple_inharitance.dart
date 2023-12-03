class Grandfather {
  void grandFather() {
    print("grand father ");
  }
}

mixin Father {
  void father() {
    print("father");
  }
}

class Me extends Grandfather with Father{
  void me() {
    super.father();
    super.grandFather();
    print("me");
  }
}
 void main (){
  Me me=Me();
  me.me();
 }
