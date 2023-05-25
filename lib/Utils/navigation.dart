import 'package:flutter/material.dart';

import '../frontend/MyAccount.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'My Account',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Dashboard'),
            onTap: () {
              // Handle Home navigation
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: Text('My Account'),
            onTap: () {
              // Handle My Account navigation
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyAccountScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
// Handle Settings navigation
              Navigator.pop(context); // Close the drawer
            },
          ),
        ],
      ),
    );
  }
}


    
