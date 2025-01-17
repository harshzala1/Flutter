
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  String name;
  Home({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("${this.name}",)),
    );
  }
}

class Page1 extends StatelessWidget {
  String name;
  Page1({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("${this.name}")),
    );
  }
}


class Page2 extends StatelessWidget {
  String name;
  Page2({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("${this.name}")),
    );
  }
}
