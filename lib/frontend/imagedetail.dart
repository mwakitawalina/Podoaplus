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

import 'appointmentScreen.dart';

class ImageDetailScreen extends StatelessWidget {
  final String imageUrl;
  final List<Salon> salons;

  ImageDetailScreen(
      {required this.imageUrl, required this.salons, required key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Detail'),
      ),
      body: Column(
        /*children: [
          Expanded(child: 
          Image.network(imageUrl),
          fit: Boxfit.cover,
          ),*/
        children: [
          Expanded(
            child: imageUrl.contains("http")
                ? Image.network(
                    imageUrl,
                    fit: BoxFit.cover, // Set the image to cover the whole space
                  )
                : Image.asset(
                    imageUrl,
                    fit: BoxFit.cover, // Set the image to cover the whole space
                  ),
          ),
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
                  title: Text(
                    salons[index].name,
                  ),
                  subtitle: Text(
                      salons[index].location), // Replace with actual location
                );
              },
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AppointmentScreen(),
                ),
              );
            },
            child: Text('Book Appointment'),
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

// void main() {
//   runApp(MaterialApp(
//     home: ImageDetailScreen(
//       imageUrl: 'images/ghanian.jpg',
//       salons: [
//         Salon(name: 'Bestlady Salon', location: 'Nairobi'),
//         Salon(name: 'Podoaplus', location: 'Kisumu'),
//         Salon(name: 'Kipodozi', location: 'Mombasa'),
//       ],
//       key: null,
//     ),
//   ));
// }
