/*import 'package:flutter/material.dart';

class ImageDetailScreen extends StatelessWidget {
  final String imageUrl;
  

  const ImageDetailScreen({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Detail'),
      ),
      body: Center(
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

class ImageDetailScreen extends StatelessWidget {
  final String imageUrl;
  final List<Salon> salons;

  ImageDetailScreen({required this.imageUrl, required this.salons, required key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Detail'),
      ),
      body: Column(
        children: [
          Image.network(imageUrl),
          SizedBox(height: 16),
          Text(
            'Salons Offering this Hairstyle:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          
          Expanded(
            child: ListView.builder(
              itemCount: salons.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(salons[index].name),
                  subtitle: Text(salons[index].location),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Salon {
  final String name;
  final String location;

  Salon({required this.name, required this.location});
}

void main() {
  runApp(MaterialApp(
    home: ImageDetailScreen(
      imageUrl: 'images/ghanian.jpg',
      salons: [
        Salon(name: 'Bestlady Salon', location: 'Nairobi'),
        Salon(name: 'Podoaplus', location: 'Kisumu'),
        Salon(name: 'Kipodozi', location: 'Mombasa'),
      ], key: null,
    ),
  ));
}
