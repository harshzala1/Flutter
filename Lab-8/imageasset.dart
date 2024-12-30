import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Display Image from Asset")),
        body: Center(
          child: Image.asset("assets/images/my_image.png"), // Replace with your image path
        ),
      ),
    );
  }
}
