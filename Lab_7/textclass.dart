import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(myapp2());
}
class myapp2 extends StatelessWidget {
  const myapp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("here is the text"),),
        body: Center(
          child: Text("hi I am Harsh Zala" ,style: TextStyle(
              fontSize: 50.0,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic
          ),),
        ),
      ),
    );
  }
}
