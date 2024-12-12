import 'dart:io';

import 'package:mylabwork/crud(simple)/colourprint.dart';
import 'package:mylabwork/crud(simple)/variables.dart';

class User {
  List<Map<String, dynamic>> userList = [];

  void adduserList(name, age, email) {
    Map<String, dynamic> map = Map();
    map[Name] = name;
    map[Age] = age;
    map[Email] = email;
    userList.add(map);
  }

  void deleteUser(idx) {
    userList.removeAt(idx);
  }

  void updateuserList(name, age, email, idx) {
    Map<String, dynamic> map = Map();
    map[Name] = name;
    map[Age] = age;
    map[Email] = email;
    userList[idx] = map;
  }

  void searchdata(searchdata) {
    for (var elements in userList) {
      if (elements[Name]
              .toString()
              .toLowerCase()
              .contains(searchdata.toString().toLowerCase()) ||
          elements[Age]
              .toString()
              .toLowerCase()
              .contains(searchdata.toString().toLowerCase()) ||
          elements[Email]
              .toString()
              .toLowerCase()
              .contains(searchdata.toString().toLowerCase())) {
        printColored(
            '${elements[Name]} . ${elements[Age]} . ${elements[Email]}',
            'green');
      }
    }
  }

  List<Map<String, dynamic>> getUserdetails() {
    return userList;
  }
}
