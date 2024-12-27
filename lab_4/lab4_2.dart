// WAP to find maximum number from given two numbers using method.
import 'dart:io';
void maxNumber(int a, int b){
  if(a>b){
    print("max is = $a");
  }
  else{
    print("max is = $b");
  }
}
void main () {
  int? a, b;
  stdout.write("Enter a num1 = ");
  a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter a num2 = ");
  b = int.parse(stdin.readLineSync()!);

  maxNumber(a, b);

}