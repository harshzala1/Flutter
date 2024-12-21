import 'dart:io';
void main(){
  Map<String,int> phonebook = Map();
  int n;
  do{
    stdout.write("enter the 1 for add 2 for read and 3 for search 4 for terminate");
    n = int.parse(stdin.readLineSync()!);
    switch(n){
      case 1:
        stdout.write("Enter name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Enter phone number: ");
        int phoneNumber = int.parse(stdin.readLineSync()!);
        phonebook[name] = phoneNumber;
        print("Contact added successfully!");
        break;
      case 2 :
        if(phonebook.isEmpty){
          print("phone book is empty");
        }else{
          phonebook.forEach((key,value){
            print("name : $key phonenumber = $value");
          });
        }
        break;
      case 3:
        stdout.write("enter name or phonenumber ");
        String search = stdin.readLineSync()!;
        for(var entry in phonebook.entries){
          String name = entry.key.toLowerCase();
          String number = entry.value.toString();
          if(name.contains(search) || number.contains(search)){
            print(" name : $name phonenumber = $number" );
          }
        }
        break;
    }

  }while(n!=4);
}
