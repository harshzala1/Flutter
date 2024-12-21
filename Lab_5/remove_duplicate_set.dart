import 'dart:io';
void main(){
  List<int> l1 = [];
  stdout.write("enter the size of array");
  int size = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < size; i++) {
    stdout.write("enter the element $i and value");
    l1.add(int.parse(stdin.readLineSync()!));
  }
  List s1 = [...l1.toSet()];

  print(s1);
}
