import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewPage(),
    );
  }
}

class GridViewPage extends StatelessWidget {
  // Static data
  final List<Map<String, String>> data = [
    {'image': 'https://media.istockphoto.com/id/1302329383/vector/two-chain-links-icon-attach-lock-symbol.jpg?s=612x612&w=0&k=20&c=c-dxZOv-E63rdJJ40lKPbO2wbb9y9jJpZ-s10ArX2l8=', 'text': 'Image 1'},
    {'image': 'https://media.istockphoto.com/id/1302329383/vector/two-chain-links-icon-attach-lock-symbol.jpg?s=612x612&w=0&k=20&c=c-dxZOv-E63rdJJ40lKPbO2wbb9y9jJpZ-s10ArX2l8=', 'text': 'Image 2'},
    {'image': 'https://media.istockphoto.com/id/1302329383/vector/two-chain-links-icon-attach-lock-symbol.jpg?s=612x612&w=0&k=20&c=c-dxZOv-E63rdJJ40lKPbO2wbb9y9jJpZ-s10ArX2l8=', 'text': 'Image 3'},
    {'image': 'https://media.istockphoto.com/id/1302329383/vector/two-chain-links-icon-attach-lock-symbol.jpg?s=612x612&w=0&k=20&c=c-dxZOv-E63rdJJ40lKPbO2wbb9y9jJpZ-s10ArX2l8=', 'text': 'Image 4'},
    {'image': 'https://media.istockphoto.com/id/1302329383/vector/two-chain-links-icon-attach-lock-symbol.jpg?s=612x612&w=0&k=20&c=c-dxZOv-E63rdJJ40lKPbO2wbb9y9jJpZ-s10ArX2l8=', 'text': 'Image 5'},
    {'image': 'https://media.istockphoto.com/id/1302329383/vector/two-chain-links-icon-attach-lock-symbol.jpg?s=612x612&w=0&k=20&c=c-dxZOv-E63rdJJ40lKPbO2wbb9y9jJpZ-s10ArX2l8=', 'text': 'Image 6'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Example'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of items in each row
          crossAxisSpacing: 10.0, // Horizontal spacing between items
          mainAxisSpacing: 10.0, // Vertical spacing between items
        ),
        itemCount: data.length, // Total number of items in the grid
        itemBuilder: (context, index) {
          final item = data[index];
          return Card(
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  item['image']!, // Load the image from the URL
                  height: 100, // Image height
                  width: 100,  // Image width
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10), // Space between image and text
                Text(
                  item['text']!,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
