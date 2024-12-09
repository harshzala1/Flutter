import 'dart:io';
void main(){
  int sum = 0;
  for(int i = 1; i<6 ; i++){
    print("enter  $i subject marks ");
     int temp = int.parse(stdin.readLineSync()!);
     sum = sum + temp;
  }
  print("your persentage is => ${sum/5}");
}
