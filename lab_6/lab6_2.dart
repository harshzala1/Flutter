import 'package:flutter/material.dart';

class lab6_2 extends StatelessWidget {
  const lab6_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Helooo"),
      ),
      body: Row(

        children: [
          Expanded(child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),
              Expanded(child: Container(
                color: Colors.green,
              ),
              ),
              Expanded(child: Container(
                color: Colors.blue,
              ),
              ),
            ],
          )),
          Expanded(child: Column(
            children: [
              Expanded(
                flex:2,
                child: Container(
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex:2,
                child: Container(
                color: Colors.yellow,
              ),
              ),
              Expanded(child: Container(
                color: Colors.pink,
              ),
              ),
            ],
          )),
          Expanded(child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              ),
              Expanded(
                flex:3,
                child: Container(
                color: Colors.orange,
              ),
              ),
              Expanded(
                flex:3,
                child: Container(
                color: Colors.purple,
              ),
              ),
            ],
          ))
        ],

      ),
    );
  }
}
