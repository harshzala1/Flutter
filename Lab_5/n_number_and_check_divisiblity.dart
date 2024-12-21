
import 'dart:io';

void main() {
  List<int> l1 = [];
  int size;
  int sum=0;
  stdout.write("enter the size of array");
  size = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < size ; i++) {
    stdout.write("enter the element $i and value");
    l1.add(int.parse(stdin.readLineSync()!));
  }
  for(var n in l1){
    if(n%3==0||n%5==0){
      sum += n;
    }
  }
  print(sum);
}