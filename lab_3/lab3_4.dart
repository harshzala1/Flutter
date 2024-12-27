// WAP to print given number in reverse order.
import 'dart:io';

void main(){

  int? n;
  stdout.write("Enter size = ");
  n = int.parse(stdin.readLineSync()!);

  List<int> arr = [];
  print("Enter a nums");
  for(int i = 0 ; i<n ; i++){
    arr.add(int.parse(stdin.readLineSync()!));
  }
  for(int i = arr.length ; i>0 ; i--){
    print(arr);
  }
}