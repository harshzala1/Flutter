import 'dart:io';

void main(){
  int? n1,n2,n3,temp;
  stdout.write("Enter a number1 = ");
  n1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter a number2 = ");
  n2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter a number3 = ");
  n3 = int.parse(stdin.readLineSync()!);

  int largest = (n1>n2 && n1>n3) ? n1 :((n2>n3) ? n2 :n3 );

  print("$largest");

}