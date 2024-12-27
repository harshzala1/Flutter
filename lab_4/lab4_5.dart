// WAP to count number of even or odd number from an array of n numbers.
import 'dart:io';

checkEvenOdd(List<int> arr){
  int oddCount = 0;
  int evenCount = 0;
  for(int i = 0 ; i<arr.length ; i++ ){
    if(arr[i]%2==0){
      evenCount++;
    }
    else{
      oddCount++;
    }
  }
  print("even total num = $evenCount");
  print("odd total num = $oddCount");
}
void main(){
  int? n;
  stdout.write("Enter a size = ");
  n = int.parse(stdin.readLineSync()!);
  List<int> arr = [];
  print("Enter a nums");
  for(int i = 0 ; i<n; i++) {
    arr.add(int.parse(stdin.readLineSync()!));

  }
  checkEvenOdd(arr);
}