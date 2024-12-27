// WAP to generate Fibonacci series of N given number using method.
import "dart:io";
void fibonacci(int? a){
  int first = 0;
  int second = 1;
  for(int i = 0 ; i<a! ; i++){

     stdout.write("$first,");

    int next = first + second;
    first = second;
    second = next;
  }
}
void main(){
  int? a;
  stdout.write("Enter a num = ");
  a = int.parse(stdin.readLineSync()!);

  fibonacci(a);
}