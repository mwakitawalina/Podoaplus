import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Payment Methods'),
            onTap: () {
              // Handle Payment Methods navigation
            },
          ),
          ListTile(
            title: Text('Change Password'),
            onTap: () {
              // Handle Change Password navigation
            },
          ),
          ListTile(
            title: Text('Contact Info'),
            onTap: () {
              // Handle Contact Info navigation
            },
          ),
          ListTile(
            title: Text('Delete Account'),
            onTap: () {
              // Handle Delete Account navigation
            },
          ),
        ],
      ),
    );
  }
}
