import 'dart:io';

void main() {
  List l1 = [];
  List l2 = [];
  List ans = [];
  // for first list
  stdout.write("enter the size of list 1");
  int size1 = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < size1; i++) {
    stdout.write("enter the element at index $i for list 1 =");
    l1.add(int.parse(stdin.readLineSync()!));
  }

  //for list two
  stdout.write("enter the element for list 2");
  for (int i = 0; i < size1; i++) {
    stdout.write("enter the element at index $i for list 2 =");
    l2.add(int.parse(stdin.readLineSync()!));
  }

  for (var element1 in l1) {
    for (var element2 in l2) {
      if (element1 == element2) {
        ans.add(element1);
      }
    }
  }
  print(ans);
}
