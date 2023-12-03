import 'package:start_programing/helper.dart';

void main(){
printLog("enter first number : ");
var first = scanLog<int>();
printLog("enter second number : ");
var second = scanLog<int>();
printLog("enter third number : ");
 var third = scanLog<int>();
printLog("enter fourth number : ");
int fourth = scanLog<int>();
var total = (first+second+third+fourth);
var ave =(total/4);
printLog("result is : $ave");


}