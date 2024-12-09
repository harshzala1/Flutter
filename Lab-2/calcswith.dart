import 'dart:io';
         void main(){
  print("enter number a ");
  int a  = int.parse(stdin.readLineSync()!);
  print("enter number b");
  int b  = int.parse(stdin.readLineSync()!);
  print("enter sign ");
  String c = stdin.readLineSync()!;
  switch(c){
    case "+" :  print("${c} of $a and $b is =  ${a+b}");
              break;
    case "*" :    print("${c} of $a and $b is = ${a*b}");
    break;
    case "-" :  print("${c} of $a and $b is =  ${a-b}");
    break;
    case "/" :  print("${c} of $a and $b is =  ${a/b}");
    break;

  }
}