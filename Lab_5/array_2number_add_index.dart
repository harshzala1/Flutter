import 'dart:io';

void main() {
  bool flag = false;
  List<int> l1 = [];
  List<int> ans = [];
  stdout.write("enter the size of array");
  int size = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < size; i++) {
    stdout.write("enter the element $i and value");
    l1.add(int.parse(stdin.readLineSync()!));
  }
  stdout.write("enter the target ");
  int target = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < size - 1; i++) {
    for (int j = i + 1; j < size; j++) {
      if (l1[i] + l1[j] == target) {
        ans.add(i);
        ans.add(j);
        flag = true;
        break;
      }
    }
    if (flag) {
      break;
    }
  }
  print(
      "here is the array index which have adittion eqal to $target and index of first pair is $ans");
}
