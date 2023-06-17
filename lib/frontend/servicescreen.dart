import 'package:flutter/material.dart';

class ServiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 8.0),
            Text('Select Services:', style: TextStyle(fontSize: 18.0)),
            ListTile(
              title: Text('Men\'s Haircut'),
              onTap: () {
                _showAddServiceDialog(context, 'Men\'s Haircut');
              },
            ),
            ListTile(
              title: Text('Women\'s Haircut'),
              onTap: () {
                _showAddServiceDialog(context, 'Women\'s Haircut');
              },
            ),
            ListTile(
              title: Text('Kids'),
              onTap: () {
                _showAddServiceDialog(context, 'Kids');
              },
            ),
            ListTile(
              title: Text('Hair Color'),
              onTap: () {
                _showAddServiceDialog(context, 'Hair Color');
              },
            ),
          ],
        ),
      ),
    );
  }

void _showAddServiceDialog(BuildContext context, String serviceType) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // Create TextEditingController instances to store the entered values
      TextEditingController nameController = TextEditingController();
      TextEditingController priceController = TextEditingController();
      TextEditingController durationController = TextEditingController();
      TextEditingController descriptionController = TextEditingController();

      return AlertDialog(
        title: Text('Add Service'),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Service Name:'),
            TextField(
              controller: nameController,
              decoration: InputDecoration(hintText: 'Enter service name'),
            ),
            SizedBox(height: 8.0),
            Text('Price:'),
            TextField(
              controller: priceController,
              decoration: InputDecoration(hintText: 'Enter price'),
            ),
            SizedBox(height: 8.0),
            Text('Duration:'),
            TextField(
              controller: durationController,
              decoration: InputDecoration(hintText: 'Enter duration'),
            ),
            SizedBox(height: 8.0),
            Text('Description:'),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(hintText: 'Enter description'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Get the entered values from the TextEditingController instances
              String name = nameController.text;
              String price = priceController.text;
              String duration = durationController.text;
              String description = descriptionController.text;

              // Save the service details to a database or any other storage mechanism
              // Here, we simply print the values
              print('Service Name: $name');
              print('Price: $price');
              print('Duration: $duration');
              print('Description: $description');

              // Close the dialog and navigate back to the ServiceScreen
              Navigator.pop(context);
            },
            child: Text('Save'),
          ),
        ],
      );
    },
  );
}

  /*void _showAddServiceDialog(BuildContext context, String serviceType) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Service'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Service Name:'),
              TextField(
                decoration: InputDecoration(hintText: 'Enter service name'),
              ),
              SizedBox(height: 8.0),
              Text('Price:'),
              TextField(
                decoration: InputDecoration(hintText: 'Enter price'),
              ),
              SizedBox(height: 8.0),
              Text('Duration:'),
              TextField(
                decoration: InputDecoration(hintText: 'Enter duration'),
              ),
              SizedBox(height: 8.0),
              Text('Description:'),
              TextField(
                decoration: InputDecoration(hintText: 'Enter description'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Save service logic
                // You can access the entered values using the TextEditingController
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }*/
}
