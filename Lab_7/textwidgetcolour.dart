import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World Example'),
        ),
        body: Center(
          child: Text(
            'Hello World',
            style: TextStyle(
              fontSize: 30.0, // Change font size
              color: Colors.blue, // Change text color
              fontWeight: FontWeight.bold, // Make text bold
              fontStyle: FontStyle.italic, // Make text italic
            ),
          ),
        ),
      ),
    );
  }
}
