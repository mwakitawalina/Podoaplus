import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/ghanian.jpg', key: null,)),
              );
            }, 
          ),
          ImageCard(
            imageUrl: 'images/fishborn.jpg',
            label: 'Fishborn',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ImageDetailScreen(imageUrl: 'images/fishborn.jpg', key: null,)),
              );
            },
          ),
          ImageCard(
            imageUrl: 'images/bandika.jpg',
            label: 'Bandika',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/bandika.jpg', key: null,)),
              );
            }, 
          ),
          ImageCard(
            imageUrl: 'images/boxbraid.jpg',
            label: 'Boxbraid',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/boxbraid.jpg',  )),
              );
            },
          ),
          ImageCard(
            imageUrl: 'images/boxbraid.jpg',
            label: 'Boxbraid',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/boxbraid.jpg',  )),
              );
            },
          ),
          ImageCard(
            imageUrl: 'images/boxbraid.jpg',
            label: 'Boxbraid',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/boxbraid.jpg',  )),
              );
            },
          ),
          ImageCard(
            imageUrl: 'images/boxbraid.jpg',
            label: 'Boxbraid',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/boxbraid.jpg',  )),
              );
            },
          ),
          ImageCard(
            imageUrl: 'images/boxbraid.jpg',
            label: 'Boxbraid',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/boxbraid.jpg',  )),
              );
            },
          ),
          ImageCard(
            imageUrl: 'images/boxbraid.jpg',
            label: 'Boxbraid',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/boxbraid.jpg',  )),
              );
            },
          ),
          ImageCard(
            imageUrl: 'images/boxbraid.jpg',
            label: 'Boxbraid',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDetailScreen(imageUrl: 'images/boxbraid.jpg',  )),
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
}
