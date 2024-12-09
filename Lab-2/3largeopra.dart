import 'dart:io';
void main() {
  print("enter number a ");
  int a = int.parse(stdin.readLineSync()!);
  print("enter number b");
  int b = int.parse(stdin.readLineSync()!);
  print("enter number b");
  int c = int.parse(stdin.readLineSync()!);
  int d = a >b ? ( a>c ? a : c) : (b>c ? b : c);
  print("largest is ${d}");
}