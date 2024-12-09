import 'dart:io';
void main(){
  print("enter the string");
  String str = stdin.readLineSync()!;
  List a = str.split(" ");
  print(" last word  length  is  ${a.last.length} and word is ${a.last}");
}
