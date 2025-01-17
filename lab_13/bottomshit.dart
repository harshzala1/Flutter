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
      Home(name: 'Here is home page'),
      Page1(name: "Here is page 1"),
      Page2(name: "Here is page 2")
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Example withh drawerrrrrrrrrrr'),
      ),
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
                'Here is Drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                setState(() {
                  idx = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.abc_outlined),
              title: Text('Page 1'),
              onTap: () {
                setState(() {
                  idx = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.ac_unit_sharp),
              title: Text('Page 2'),
              onTap: () {
                setState(() {
                  idx = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: list[idx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: idx,
        onTap: (value) {
          setState(() {
            idx = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "Page1"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp), label: "Page2"),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  final String name;
  Home({required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(name, style: TextStyle(fontSize: 74)));
  }
}

class Page1 extends StatelessWidget {
  final String name;
  Page1({required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(name, style: TextStyle(fontSize: 74)));
  }
}

class Page2 extends StatelessWidget {
  final String name;
  Page2({required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(name, style: TextStyle(fontSize: 74)));
  }
}
