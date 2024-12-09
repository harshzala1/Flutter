// WAP to find whether the given number is prime or not.
import 'dart:io';

void main(){
    print("enter the number");
    int a = int.parse(stdin.readLineSync()!);
    int count = 1;
    if(a==0 || a==1){
      print("Number is not prime ");
    }
    else{
      for(int i = 2 ; i<a/2 ; i++){
        if(a%i==0) {
          count++;
        }
      }
      if(count>1){
        print("not prime num");
      }
      else{
        print("prime num");
      }
    }
}