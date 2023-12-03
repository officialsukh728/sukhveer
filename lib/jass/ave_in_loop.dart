import '../helper.dart';

void main(){
  printLog("enter the number = ");
  int start = scanLog<int>();
  printLog("enter your number =");
  int end =scanLog<int>();
  int sum=0;
  int z = ((end-start)+1);


  for(int i=start; i <= end; i++){
     sum += i;

}double ave =(sum/z);
  printLog(ave );
}