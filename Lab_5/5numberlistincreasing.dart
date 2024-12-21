import 'dart:io';
void main(){
  List<int> l1 = [];
  for(int i = 1 ; i<=5 ; i++){
    stdout.write("enter the element = $i in list l1 =");
    l1.add(int.parse(stdin.readLineSync()!));

  }
  l1.sort();
  print(l1);
}

