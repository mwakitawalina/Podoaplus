import 'package:flutter/material.dart';

class BusinessSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Up My Business'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Online Booking'),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => OnlineBookingDialog(),
              );
            },
          ),
          ListTile(
            title: Text('Business Info'),
            onTap: () {
              // Handle business info tapped
            },
          ),
          ListTile(
            title: Text('Social Info'),
            onTap: () {
              // Handle social info tapped
            },
          ),
          ListTile(
            title: Text('Edit and Promote My Profile'),
            onTap: () {
              // Handle edit and promote profile tapped
            },
          ),
        ],
      ),
    );
  }
}

class OnlineBookingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Online Booking'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Schedule Appointments'),
          DropdownButton<String>(
            value: '15',
            onChanged: (newValue) {
              // Handle interval selection
            },
            items: [
              DropdownMenuItem(
                value: '15',
                child: Text('15-minute interval'),
              ),
              DropdownMenuItem(
                value: '30',
                child: Text('30-minute interval'),
              ),
              DropdownMenuItem(
                value: '60',
                child: Text('60-minute interval'),
              ),
            ],
          ),
          Row(
            children: [
              Text('Allow Last Minute Availability: '),
              SizedBox(width: 8),
              ToggleButtons(
                isSelected: [false, true],
                onPressed: (index) {
                  // Handle last minute availability selection
                },
                children: [
                  Text('Yes'),
                  Text('No'),
                ],
              ),
            ],
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Hours Notice for Cancellation'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Hours Notice for Online Bookings'),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Submit'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
      ],
    );
  }
}
