import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text('Payment Method'),
            onTap: () {
              // Handle Payment Method option click
            },
          ),
          ListTile(
            title: Text('Change Password'),
            onTap: () {
              // Handle Change Password option click
            },
          ),
          ListTile(
            title: Text('Contact Info'),
            onTap: () {
              // Handle Contact Info option click
            },
          ),
          ListTile(
            title: Text('Delete Account'),
            onTap: () {
              // Handle Delete Account option click
            },
          ),
        ],
      ),
    );
  }
}
