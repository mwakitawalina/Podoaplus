import 'package:flutter/material.dart';
import 'package:salonbooking/frontend/changepassword.dart';
import 'package:salonbooking/frontend/paymentscreen.dart';

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
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaymentMethodsScreen()),
        );
          
              // Handle Payment Methods navigation
            },
          ),
          ListTile(
            title: Text('Change Password'),
            onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChangePasswordScreen()),
        );
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
