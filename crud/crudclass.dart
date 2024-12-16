import 'dart:io';
class User{
  List <Map<String,dynamic>>  Userlist = [];
  void adduser(name,age,email){

    Map<String,dynamic> m1 = Map();
    m1['name']=name;
    m1['age']=age;
    m1['email']=email;
    Userlist.add(m1);
  }

  void deleteuser(idx){
    Userlist.removeAt(idx);
  }

  void updateuser(name,age,email,idx) {
    Map<String, dynamic> m1 = Map();
    m1['name'] = name;
    m1['age'] = age;
    m1['email'] = email;
    Userlist[idx] = m1;
  }
  List <Map<String,dynamic>>  getuserdetail(){
    return Userlist;
  }



}
