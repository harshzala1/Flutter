import 'dart:io';
void main(){
  print("enter number temprature in fernhite ");
  int a  = int.parse(stdin.readLineSync()!);
double c = (5/9) * (a-32);
print("valuie in celcius is $c");


}
