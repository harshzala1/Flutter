import 'dart:io';
void main() {
  print("enter  weight  in paund ");
  int p = int.parse(stdin.readLineSync()!);
  print("enter  weight  in inch ");
  int h = int.parse(stdin.readLineSync()!);
  double bmi = (p / (h* h))*703;
  print("valuie in celcius is $bmi");
}
