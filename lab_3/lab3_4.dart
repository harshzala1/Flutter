// WAP to print given number in reverse order.
import 'dart:io';

void main(){
  print("enter the number ")
  int a = int.parse(stdin.readLineSync()!);
  //321
  int rem ;
  int reverce = 0;
  while(a!=0){
    rem = a%10;
    reverce = reverce*10 + rem;
    a = a~/10;
  }
  print("reverce");
}