import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          title: Text('Custom Font Example'),
        ),
        body: Center(
          child: CustomTextWidget(),
        ),
      ),
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Hello World in from one',
          style: TextStyle(
            fontFamily: 'Lobster',
            fontSize: 30.0,
            color: Colors.blue,
          ),
        ),
        SizedBox(height: 20),

        Text(
          'Hello World in second text',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 30.0,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
