import 'package:firstproject/lab_13/home.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _DemoState();
}

class _DemoState extends State<BottomNavigation> {
  int idx = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      Home(name: 'here is home page'),Page1(name: "here is page 1"),Page2(name: "here is page 2")
    ];
    return Scaffold(
      body: list[idx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: idx,
        onTap: (value) {
          setState(() {
            idx = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: "Page1"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp),label: "Page2"),
        ],
      ),
    );
  }
}