// WAP that creates List with following value:“Delhi”, “Mumbai”, “Bangalore”, “Hyderabad” and
// “Ahmedabad” Replace “Ahmedabad” with “Surat” in above List.

import 'dart:io';

void main(){
  List<String> cities = ['Delhi', 'Mumbai', 'Bangalore', 'Hyderabad', 'Ahmedabad'];

  cities.replaceRange(4,5,["surat"]);
  print(cities);

}