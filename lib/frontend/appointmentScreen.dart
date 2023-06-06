import 'package:flutter/material.dart';
import 'package:device_calendar/device_calendar.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class AppointmentScreen extends StatefulWidget {
  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  late DateTime selectedDate;
  late TimeOfDay selectedTime;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    selectedTime = TimeOfDay.now();
    tz.initializeTimeZones(); // Initialize the timezone database
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  Future<void> _addToCalendar() async {
    final calendar = DeviceCalendarPlugin();
    final permissionsGranted = await calendar.hasPermissions();

    if (permissionsGranted.isSuccess && permissionsGranted.data!) {
      final location = await tz.getLocation(tz.local as String);

      final startDateTime = tz.TZDateTime.from(
        selectedDate,
        selectedTime as Location,
        
      );

      final endDateTime = startDateTime.add(Duration(hours: 1)); // Set the end time to 1 hour after the start time

      final event = Event(
        'Schedule your appointment',
        start: startDateTime,
        end: endDateTime,
        location: 'Appointment location',
      );

      final createResult = await calendar.createOrUpdateEvent(event);

      if (createResult!.isSuccess) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Event added to calendar')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to add event to calendar')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Calendar permission not granted')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Text('Date: '),
                TextButton(
                  onPressed: () => _selectDate(context),
                  child: Text(
                    '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text('Time: '),
                TextButton(
                  onPressed: () => _selectTime(context),
                  child: Text(
                    '${selectedTime.format(context)}',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addToCalendar,
              child: Text('Add to Calendar'),
            ),
          ],
        ),
      ),
    );
  }
}
