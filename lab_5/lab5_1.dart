// WAP that prompts the user to enter 5 numbers, stores them in a List, and displays them in increasing order.

import 'dart:io';

void main(){
  List<int>? num = [];
  int i = 5;
  print("enter nums");
  while(i != 0){
    num.add(int.parse(stdin.readLineSync()!));
    i--;
  }

  num.sort();
  stdout.write("num = $num");

}