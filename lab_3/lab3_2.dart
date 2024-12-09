// WAP to find factorial of the given number

import 'dart:io';
void main(){
  print("enter the number");
  int a = int.parse(stdin.readLineSync()!);
  int ans = 1;
  for(int i = 1 ; i <= a ; i++){
    ans *= i;
  }
  print("factorial of $a is => $ans");
}
