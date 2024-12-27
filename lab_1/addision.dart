import 'dart:io';

void main(){
  int? a;
  stdout.write("Enter a value of a: ");
  a = int.parse(stdin.readLineSync()!);
  int? b;
  stdout.write("Enter a value of b: ");
  b = int.parse(stdin.readLineSync()!);

  int c = a+b;
  print("value $c");
}