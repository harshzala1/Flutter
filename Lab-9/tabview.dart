import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter TabView Example',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabView Example'),
          bottom: TabBar(
            tabs: [
              Tab( text: 'Home'),
              Tab( text: 'Search'),
              Tab( text: 'Settings'),
            ],
          ),
        ),
        body: TabBarView(
          children: [

            Center(
              child: Text('Home Page', style: TextStyle(fontSize: 24)),
            ),

            Center(
              child: Text('Search Page', style: TextStyle(fontSize: 24)),
            ),

            Center(
              child: Text(' Page', style: TextStyle(fontSize: 24)),
            ),
          ],
        ),
      ),
    );
  }
}
