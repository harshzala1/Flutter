import 'dart:io';
void main() {
  print("enter number a ");
  int a = int.parse(stdin.readLineSync()!);
  print("enter number b");
  int b = int.parse(stdin.readLineSync()!);
  print("enter number b");
  int c = int.parse(stdin.readLineSync()!);

  if(a>=b){
    if(a>=c){
      print("${a} is largest ");
    }else{
      print("${c} is largest ");
    }
  }else{
       if(b>=c){
         print("$b is largest ");
       }else{
         print("$c is largest ");
       }
  }
}