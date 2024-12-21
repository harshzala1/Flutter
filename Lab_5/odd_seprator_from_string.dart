// WAP to find the largest odd integer (as a string) that is a non-empty substring of a given string
// num, which represents a large integer. If no odd integer exists, return an empty string "".
// Example: Input: num = "52", Output: "5"; Input: num = "4206", Output: ""; Input: num =
// "35427", Output: "35427".
import 'dart:io';

void main() {
  stdout.write("enter the number ");
  String number = stdin.readLineSync()!;
  String ans = '0' ;
  for (int i = number.length - 1; i >= 0; i--) {
    if(int.parse(number[i])%2 != 0){
      ans = number;
      break;
    }
    number =  number.substring(0,number.length-1);
  }
  print(ans);

}
