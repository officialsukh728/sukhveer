class GrandFather {
  void grandfather() {
    print("grandfather");
  }
}

class Father extends GrandFather{
  void father() {
    print("father");
  }
  void v(){
    super.grandfather();
  }
}
void main (){
  Father father=Father();
father.father();
father.v();
}