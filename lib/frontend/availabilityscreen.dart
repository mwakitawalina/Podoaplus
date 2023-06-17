/*import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AvailabilityScreen extends StatefulWidget {
  @override
  _AvailabilityScreenState createState() => _AvailabilityScreenState();
}

class _AvailabilityScreenState extends State<AvailabilityScreen> {
  List<String> availableDays = []; // List to store the selected days

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Availability'),
      ),
      body: ListView.builder(
        itemCount: 7, // Assuming you want to display all 7 days of the week
        itemBuilder: (context, index) {
          final day = getDayOfWeek(index); // Helper function to get day name
          final isSelected = availableDays.contains(day);

          return CheckboxListTile(
            title: Text(day),
            value: isSelected,
            onChanged: (value) {
              setState(() {
                if (value == true) {
                  availableDays.add(day);
                } else {
                  availableDays.remove(day);
                }
              });
            },
          );
        },
      ),
    );
  }

  String getDayOfWeek(int index) {
    final now = DateTime.now();
    final dayIndex = (now.weekday + index) % 7; // To get the next consecutive days

    return DateFormat.E().format(now.add(Duration(days: dayIndex)));
  }
}*/

import 'package:flutter/material.dart';

class AddAvailabilityDialog extends StatefulWidget {
  @override
  _AddAvailabilityDialogState createState() => _AddAvailabilityDialogState();
}

class _AddAvailabilityDialogState extends State<AddAvailabilityDialog> {
  List<String> selectedDays = [];

  void toggleDay(String day) {
    setState(() {
      if (selectedDays.contains(day)) {
        selectedDays.remove(day);
      } else {
        selectedDays.add(day);
      }
    });
  }

  void saveAvailability() {
    // Save the selected days to your data model or perform any other necessary actions
    Navigator.pop(context); // Return to the SetupBusinessScreen
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Availability'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CheckboxListTile(
            title: Text('Monday'),
            value: selectedDays.contains('Monday'),
            onChanged: (_) => toggleDay('Monday'),
          ),
          CheckboxListTile(
            title: Text('Tuesday'),
            value: selectedDays.contains('Tuesday'),
            onChanged: (_) => toggleDay('Tuesday'),
          ),
          CheckboxListTile(
            title: Text('Wednesday'),
            value: selectedDays.contains('Wednesday'),
            onChanged: (_) => toggleDay('Wednesday'),
          ),
          CheckboxListTile(
            title: Text('Thursday'),
            value: selectedDays.contains('Thursday'),
            onChanged: (_) => toggleDay('Thursday'),
          ),
          CheckboxListTile(
            title: Text('Friday'),
            value: selectedDays.contains('Friday'),
            onChanged: (_) => toggleDay('Friday'),
          ),
          CheckboxListTile(
            title: Text('Saturday'),
            value: selectedDays.contains('Saturday'),
            onChanged: (_) => toggleDay('Saturday'),
          ),
          CheckboxListTile(
            title: Text('Sunday'),
            value: selectedDays.contains('Sunday'),
            onChanged: (_) => toggleDay('Sunday'),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context), // Cancel button
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: saveAvailability, // Save button
          child: Text('Save'),
        ),
      ],
    );
  }
}

