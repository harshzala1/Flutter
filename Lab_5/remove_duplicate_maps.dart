import 'dart:io';
void main(){
  List<int> l1 = [];
  Map<int,bool> m1 = Map();
  stdout.write("enter the size of array");
  int size = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < size; i++) {
    stdout.write("enter the element $i and value");
    l1.add(int.parse(stdin.readLineSync()!));
    m1[l1[i]]=true;
  }
 List ans = m1.keys.toList();
print(ans);
}
