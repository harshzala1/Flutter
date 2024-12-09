// WAP to print numbers between two given numbers which is divisible by 2 but not divisible by 3.

import 'dart:io';
void main(){
   print("enter first nnumber ");
   int a = int.parse(stdin.readLineSync()!);
   print("enter second nnumber ");
   int b = int.parse(stdin.readLineSync()!);
   for(int i = a ; i <= b ;i++){
      if((i%2==0)&&(i%3!=0)){
         print(" ${i} is divisible by 2 but not divisible by 3. ");
      }
   }
}
