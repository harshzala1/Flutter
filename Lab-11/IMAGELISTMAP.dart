import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageGridScreen(),
    );
  }
}

class ImageGridScreen extends StatelessWidget {
  // Static data: List of maps containing image URLs and titles
  final List<Map<String, String>> imagesData = [
    {
      'imageUrl': 'https://via.placeholder.com/150',
      'title': 'Image 1',
    },
    {
      'imageUrl': 'https://via.placeholder.com/150/0000FF/808080',
      'title': 'Image 2',
    },
    {
      'imageUrl': 'https://via.placeholder.com/150/FF0000/FFFFFF',
      'title': 'Image 3',
    },
    {
      'imageUrl': 'https://via.placeholder.com/150/00FF00/000000',
      'title': 'Image 4',
    },
    {
      'imageUrl': 'https://via.placeholder.com/150/FFFF00/0000FF',
      'title': 'Image 5',
    },
    {
      'imageUrl': 'https://via.placeholder.com/150/000000/FFFFFF',
      'title': 'Image 6',
    },
    {
      'imageUrl': 'https://via.placeholder.com/150/00FFFF/0000FF',
      'title': 'Image 7',
    },
    {
      'imageUrl': 'https://via.placeholder.com/150/FF00FF/FFFFFF',
      'title': 'Image 8',
    },
    {
      'imageUrl': 'https://via.placeholder.com/150/800080/FFFFFF',
      'title': 'Image 9',
    },
    {
      'imageUrl': 'https://via.placeholder.com/150/FFC0CB/000000',
      'title': 'Image 10',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image GridView with Map'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 10.0, // Horizontal space between items
          mainAxisSpacing: 10.0, // Vertical space between items
        ),
        itemCount: imagesData.length,
        itemBuilder: (context, index) {
          var imageData = imagesData[index];
          return Card(
            elevation: 4.0,
            child: Column(
              children: [
                Image.network(
                  imageData['imageUrl']!, // Access imageUrl from the map
                  fit: BoxFit.cover, // Adjust image to cover the cell
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    imageData['title']!, // Access title from the map
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
