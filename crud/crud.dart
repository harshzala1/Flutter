import 'dart:io';

import 'package:crud/crud/crudclass.dart';
void main(){
  User u1 = User();
  stdout.write("enter choisse 1 for add 2 for delete 3 for update 4 for getall and 5 for terminate");
  int choise = int.parse(stdin.readLineSync()!);

  do{
    switch(choise){
      case 1:
        stdout.write("enter name ");
        String name = stdin.readLineSync()!;
        stdout.write("enter age ");
        int age = int.parse(stdin.readLineSync()!);
        stdout.write("enter email ");
        String email = stdin.readLineSync()!;
        u1.adduser(name, age, email);
        break;

      case 2:
        stdout.write("enter idx ");
        int idx = int.parse(stdin.readLineSync()!);
        u1.deleteuser(idx);
        break;
      case 3:
        stdout.write("enter name ");
        String name = stdin.readLineSync()!;
        stdout.write("enter age ");
        int age = int.parse(stdin.readLineSync()!);
        stdout.write("enter email ");
        String email = stdin.readLineSync()!;
        stdout.write("enter IDX THAT UPDATE ");
        int idx = int.parse(stdin.readLineSync()!);
        u1.updateuser(name, age, email, idx);
        break;
      case 4 :
        List <Map<String,dynamic>>  u2 = u1.getuserdetail();
        print(u2);
        break;
      case 5 :
        print("thankyou");
        break;
    }
  }while(choise!=5);
}
