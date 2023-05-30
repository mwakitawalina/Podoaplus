import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../Utils/navigation.dart';
import 'MyAccount.dart';
import 'imagedetail.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('My Account'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyAccountScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('My Appointments'),
              onTap: () {
                // Handle My Appointments option click
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Set Up Business'),
              onTap: () {
                // Handle Set Up Business option click
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Dashboard'),
       
        ),
      
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: [
          ImageCard(
            imageUrl: 'images/ghanian.jpg',
            label: 'Ghanian',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/ghanian.jpg', key: null, salons: [],)),
              );
            }, 
          ),
          ImageCard(
            imageUrl: 'images/fishborn.jpg',
            label: 'Fishborn',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/fishborn.jpg', key: null, salons: [],)),
              );
            },
          ),
          ImageCard(
            imageUrl: 'images/bandika.jpg',
            label: 'Bandika',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/bandika.jpg', key: null, salons: [],)),
              );
            }, 
          ),
          ImageCard(
            imageUrl: 'images/boxbraid.jpg',
            label: 'Boxbraid',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/boxbraid.jpg', key: null, salons: [],  )),
              );
            },
          ),
          ImageCard(
            imageUrl: 'images/boxbraid.jpg',
            label: 'Boxbraid',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/boxbraid.jpg', key: null, salons: [],  )),
              );
            },
          ),
          ImageCard(
            imageUrl: 'images/boxbraid.jpg',
            label: 'Boxbraid',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/boxbraid.jpg', key: null, salons: [],  )),
              );
            },
          ),
          ImageCard(
            imageUrl: 'images/boxbraid.jpg',
            label: 'Boxbraid',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/boxbraid.jpg', key: null, salons: [],  )),
              );
            },
          ),
          ImageCard(
            imageUrl: 'images/boxbraid.jpg',
            label: 'Boxbraid',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/boxbraid.jpg', key: null, salons: [],  )),
              );
            },
          ),
          ImageCard(
            imageUrl: 'images/boxbraid.jpg',
            label: 'Boxbraid',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/boxbraid.jpg', key: null, salons: [],  )),
              );
            },
          ),
          ImageCard(
            imageUrl: 'images/boxbraid.jpg',
            label: 'Boxbraid',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/boxbraid.jpg', key: null, salons: [],  )),
              );
            },
          ),
          // Add more ImageCard widgets for additional images
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imageUrl;
  final String label;
  final VoidCallback onTap;

  const ImageCard({Key? key, required this.imageUrl, required this.label, required this.onTap}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4.0,
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

