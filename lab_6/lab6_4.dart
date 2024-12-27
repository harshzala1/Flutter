import 'package:flutter/material.dart';

class HighLayout extends StatelessWidget {
  const HighLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Layout Part-2",
          style: TextStyle(fontSize: 30, color: Colors.red),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(child: Column(
                  children: [
                    Expanded(
                        child: Container(
                          color: Colors.red,
                        )),
                    Expanded(
                        child: Container(
                          color: Colors.white,
                        )),
                    Expanded(
                        child: Container(
                          color: Colors.blue,
                        ))
                  ],
                )),
                Expanded(child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          color: Colors.red,
                        )),
                    Expanded(
                        child: Container(
                          color: Colors.white,
                        )),
                    Expanded(
                        child: Container(
                          color: Colors.blue,
                        ))
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Expanded(
                        child: Container(
                          color: Colors.red,
                        )),
                    Expanded(
                        child: Container(
                          color: Colors.white,
                        )),
                    Expanded(
                        child: Container(
                          color: Colors.blue,
                        ))
                  ],
                ))

              ],
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.green,
          ))
        ],  b
      ),
    );
  }
}
