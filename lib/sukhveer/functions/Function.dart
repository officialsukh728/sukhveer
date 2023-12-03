import 'package:start_programing/helper.dart';

void sum1() {
  int a = 10;
  int b = 20;
  print(" sum = ${a + b}");
}
void sum2(int a, int b) {
  print("sum =${a + b}");
}
int sum3() {
  int x = 10;
  int y = 20;
  return x + y;
}
int sum4(int a, int b) {
  return a + b;
}
/// named function
 int sum5 ({required int a,required int b }){
  int c =a+b;
  return c;
 }
 /// optional
 int sum6 ({required int a,int b=20}){
  int c =a+b;
  return c;

 }
void main (){
  int a =10;
  int b=20;
  sum1();
  sum2(a, b);
 int d= sum3();
 print(d);
 int e= sum4(a, b);
  printLog(e);
  sum5(a: a, b: b);
  sum5(b: b, a: a);
  sum6(a: a);




}