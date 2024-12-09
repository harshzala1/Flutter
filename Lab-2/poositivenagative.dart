import 'dart:io';
void main(){
  print("enter a number ")
  int a  = int.parse(stdin.readLineSync()!);
  if(a>=0){
    print("number is positive ${a}");
  }else{
    print("number is nagative");
  }

}
