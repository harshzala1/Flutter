import 'dart:io';

import 'package:mylabwork/crud(simple)/classcrud.dart';
import 'package:mylabwork/crud(simple)/colourprint.dart';
import 'package:mylabwork/crud(simple)/variables.dart';

void main() {
  User user = User();
  int choice;
  do {
    print('Select Your Choice From Below Available Options:'
        '\n1. Insert User'
        '\n2. List User'
        '\n3. Update User'
        '\n4. Delete User'
        '\n5. Search User'
        '\n6. Exit Application');
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        //region ENTER USER
        stdout.write("enter name :");
        String name = stdin.readLineSync()!;
        stdout.write("enter age");
        int age = int.parse(stdin.readLineSync()!);
        stdout.write("enter email");
        String email = stdin.readLineSync()!;
        user.adduserList(name, age, email);
        //endregion
        break;
      case 2:
        //region USERDETAIL
        List<Map<String, dynamic>> userList = user.getUserdetails();
        for (var element in userList) {
          printColored('${element[Name]} . ${element[Age]} . ${element[Email]}',
              'green');
        }

        //endregion
        break;
      case 3:
        //region UPDATE USER
        stdout.write("enter name :");
        String name = stdin.readLineSync()!;
        stdout.write("enter age");
        int age = int.parse(stdin.readLineSync()!);
        stdout.write("enter email");
        String email = stdin.readLineSync()!;
        stdout.write("enter index that you want to change");
        int idx = int.parse(stdin.readLineSync()!);
        user.updateuserList(name, age, email, idx);
        //endregion
        break;
      case 4:
        //region DELETE USER
        stdout.write("enter index that you want to delete");
        int idx = int.parse(stdin.readLineSync()!);
        user.deleteUser(idx);
        //endregion
        break;
      case 5:
        //region SEARCH USER
        stdout.write("enter data that you want to search");
        String searchdata = stdin.readLineSync()!;
        user.searchdata(searchdata);
      //endregion
      case 6:
        stdout.write("thankyou");
        break;
    }
  } while (choice != 6);
}
