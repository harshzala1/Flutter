// WAP program to calculate the sum of all positive even numbers and the sum of all negative
// odd numbers from a set of numbers. you can enter 0 (zero) to quit the program and thus it
// displays the result
import 'dart:io';
void main(){
 int a = 1 ;
 int psum = 0;
 int nsum = 0;
 while(a!=0){
  print("enter a number");
  a = int.parse(stdin.readLineSync()!);
    if(a>0 && (a%2==0)){
    psum += a;
   }
    if(a<0 &&(a%2!=0)){
     nsum += a;
    }

 }
print("positive even sum is ${psum} and nagative odd sum is ${nsum}");
}