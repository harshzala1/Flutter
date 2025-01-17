
import 'package:flutter/material.dart';
import 'package:flutter_z/lab_13/formvalidation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return newclass();
  }
}

class newclass extends StatelessWidget {
  const newclass({super.key});

  @override
  Widget build(BuildContext context) {
  return   MaterialApp(
      home: Demo()
    );
  }
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Bottom Sheet Form Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child:  MyForm(),
                );
              },
            );
          },
          child: Text("Show Form"),
        ),
      ),
    );
  }
}


