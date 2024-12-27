import 'dart:io';

void main (){
  int? meter;

  stdout.write("Enter meter = ");
  meter = int.parse(stdin.readLineSync()!);

  double result = meter*3.28;

  print("feet $result");
}