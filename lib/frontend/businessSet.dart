import 'package:flutter/material.dart';
import 'package:salonbooking/frontend/availabilityscreen.dart';
import 'package:salonbooking/frontend/profile.dart';
import 'package:salonbooking/frontend/servicescreen.dart';

class BusinessSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Up My Business'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ServiceScreen(),
                    ),
                  );// Handle add devices card tap
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_circle, size: 48.0),
                    SizedBox(height: 8.0),
                    Text('Add Services'),
                  ],
                ),
              ),
            ),
            
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddAvailabilityDialog(),
                    ),
                  );
                  // Handle add availability card tap
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.calendar_today, size: 48.0),
                    SizedBox(height: 8.0),
                    Text('Add Availability'),
                  ],
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ),
                  );
                  // Handle add availability card tap
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 48.0),
                    SizedBox(height: 8.0),
                    Text('Edit Profile'),
                  ],
                ),
              ),
            ),
            
            Card(
              child: InkWell(
                onTap: () {
                  // Handle select your plan card tap
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle, size: 48.0),
                    SizedBox(height: 8.0),
                    Text('Select Your Plan'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



































