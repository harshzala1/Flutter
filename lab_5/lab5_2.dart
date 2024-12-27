// WAP to read 2 list and return list that contains only the elements that are common between them.

import "dart:io";

void main(){
  List<int>? num1 = [];
  List<int>? num2 = [];

  int i = 5;
  int j = 5;
  print("enter nums1");
  while(i != 0){
    num1.add(int.parse(stdin.readLineSync()!));
    i--;
  }
  print("enter nums1");
  while(j != 0){
    num2.add(int.parse(stdin.readLineSync()!));
    j--;
  }
  for(int i = 0 ; i < 5 ; i++ ){
    for(int j = 0 ; j < 5 ; j++){
      if(num1[i]==num2[j]){
        stdout.write(num1[i]);
      }
    }
  }
}