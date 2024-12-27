// WAP to find factorial of the given number

import 'dart:io';

void main(){
  int? a;
  stdout.write("Enter a num for factorial = ");
  a = int.parse(stdin.readLineSync()!);

  int ans = 1;

  for(int i = a; i!=0 ; i--){
    ans = ans*i;
  }
  print('$ans');
}