import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("i am using stack")),
        body: Center(
          child: Stack(
            alignment: Alignment.center, // Align widgets to the center
            children: [
              Image.asset("assets/images/my_image.png"), // Replace with your image path
              Positioned(
                bottom: 20, // Position the text 20 pixels from the bottom
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: Colors.black.withOpacity(0.5), // Semi-transparent background
                  child: Text(
                    'કાચિંડો',
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
