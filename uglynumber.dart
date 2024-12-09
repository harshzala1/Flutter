import 'dart:io';
void main(){
  print("enter number   ");
  int check = 0;
  int n  = int.parse(stdin.readLineSync()!);
  for (int i = 2 ; i < n ; i++ ){
    if(n%i==0 ){

       if(n!=2||n!=3||n!=5){
         
         check = 1;
       }
    }
  }
  if(check==1){
    print("$n is not ugly number");
  }else{
    print("$n is  ugly number");
  }

}
