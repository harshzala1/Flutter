import 'dart:io';

void main(){
  int? n;
  stdout.write("Enter a number = ");
  n = int.parse(stdin.readLineSync()!);

  if(n>=0){
    stdout.write("number is positive");
  }
  else{
    stdout.write("number is negative");
  }
}