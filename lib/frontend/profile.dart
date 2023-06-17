
import 'package:flutter/material.dart';
import 'package:salonbooking/frontend/editprofile.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Info'),
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
            showDialog(context: context, builder: (context)=> BusinessInfoDialog(),
            );
              // Handle business info tapped
            },
          ),
           ListTile(
            title: Text('Personal Info'),
            onTap: () {
               showDialog(
                context: context,
                builder: (context) => PersonalInfoDialog(),
              );
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfileScreen()),
              );
              // Handle edit and promote profile tapped
            },
          ),
        ],
      ),
    );
  }
}

class OnlineBookingDialog extends StatelessWidget {
  bool allowLastMinuteAvailability = false;
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
          ),          /*Row(
              children: [
                Text('Allow Last Minute Availability'),
                Switch(
                  value: allowLastMinuteAvailability,
                  onChanged: (value) {
                    setState(() {
                      allowLastMinuteAvailability = value;
                    });
                  },
                ),*/
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
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('e'),
        ),
      ],
    );
  }
}

class PersonalInfoDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Personal Info'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Profession'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Speciality'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'About Me'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Phone Number'),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          child: Text('Cancel'),
          onPressed: () {
            // Perform save operation
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          child: Text('Save'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class BusinessInfoDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Business Info'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Business Name'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Salon Number'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Personal Phone Number'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'City'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'State'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'SMS Notification Phone Number'),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          child: Text('Cancel'),
          onPressed: () {
            // Perform save operation
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          child: Text('Save'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

