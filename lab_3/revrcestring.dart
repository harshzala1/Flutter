import 'dart:io';
void main(){
  print("enter string");
  String a = stdin.readLineSync()!;
for(int i = a.length-1 ; i >= 0 ; i--){

  stdout.write(a[i]+" ");
}

}
