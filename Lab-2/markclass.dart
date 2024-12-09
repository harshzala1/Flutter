import 'dart:io';
void main() {
  int sum = 0;
  for (int i = 1; i < 6; i++) {
    print("enter subject $i marks out of 100 ");
    int temp = int.parse(stdin.readLineSync()!);
    sum += temp;
  }
  double pr = sum / 5;
  if (pr < 35.0) {
    print("student is fail coz  persentage is ${pr}");
  } else if (pr > 35.00 && pr <= 45.00) {
    print("student pass coz  persentage is ${pr}");
  } else if (pr > 45.00 && pr <= 60) {
    print("student secondclass coz  persentage is ${pr}");
  } else if (pr > 60.00 && pr < 70.00) {
    print("student first class coz  persentage is ${pr}");
  }
}



