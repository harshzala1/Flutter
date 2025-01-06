import 'package:flutter/material.dart';

class ListViewCity extends StatelessWidget {
  ListViewCity({super.key});
  List<String> city =  ["New York", "Tokyo", "Paris", "London", "Sydney", "Berlin", "Rome", "Los Angeles", "Dubai", "Toronto"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: ListView.builder(
      itemCount: city.length,
      itemBuilder: (context, index){
        return ListTile(
        title: Text(city[index]),

        );
},

    ),
    );
  }
}
