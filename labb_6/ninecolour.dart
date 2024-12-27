import 'package:flutter/material.dart';

class Mynine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('9 Grid Sections'),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: [
            Container(
              color: Colors.red,
              child: Center(child: Text('')),
            ),
            Container(
              color: Colors.green,
              child: Center(child: Text('')),
            ),
            Container(
              color: Colors.blue,
              child: Center(child: Text('')),
            ),
            Container(
              color: Colors.orange,
              child: Center(child: Text('')),
            ),
            Container(
              color: Colors.purple,
              child: Center(child: Text('')),
            ),
            Container(
              color: Colors.yellow,
              child: Center(child: Text('')),
            ),
            Container(
              color: Colors.cyan,
              child: Center(child: Text('')),
            ),
            Container(
              color: Colors.teal,
              child: Center(child: Text('')),
            ),
            Container(
              color: Colors.pink,
              child: Center(child: Text('')),
            ),
          ],
        ),
      ),
    );
  }
}
