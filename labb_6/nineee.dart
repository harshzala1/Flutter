import 'package:flutter/material.dart';

class Mynines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('9 Grid Sections'),
        ),
        body:Row(
          children: [
            Expanded(
                child: Column(
                  children: [
                    Expanded(flex:1,child:Container(color:Colors.white,),)
                  ],
                ),)


          ],

        ),
      ),
    );
  }
}
