// WAP to find the element that appears only once in a non-empty array of integers, where every
// other element appears twice. The solution should have linear runtime complexity and use only
// constant extra space. Example: Input: nums = [2, 2, 1], Output: 1; Input: nums = [2,4, 1, 2, 1, 2],
// Output: 4; Input: nums = [1], Output: 1.
import 'dart:io';
void main(){
  print("enter size of list");
  int size = int.parse(stdin.readLineSync()!);
  List  arr = [];
  for(int  i = 0 ; i < size ; i++ ){
    arr.add(int.parse(stdin.readLineSync()!));
  }
  //checking occur
  //[1,2,3,1,2]
  int temp;
  int next;
  for(int k = 0 ;  k < size ; k++ ){
    temp=arr[k];
    int flag = 0;
     for(int j = 0 ; j < size ; j++){
       if(j!=k && arr[j] == temp){
         flag=1;
       }
     }
     if(flag==0){
       print(temp);
     }
  }

}
