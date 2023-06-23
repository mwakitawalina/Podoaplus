import 'package:flutter/material.dart';
import 'package:device_calendar/device_calendar.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

import 'imagedetail.dart';

class AppointmentScreen extends StatefulWidget {
  final Salon salon;
  final String style;

  const AppointmentScreen(
      {super.key, required this.salon, required this.style});
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

  Future<void> _addToCalendar(String location, TimeOfDay selectedTime) async {
    final calendar = DeviceCalendarPlugin();

    await calendar.requestPermissions();
    final permissionsGranted = await calendar.hasPermissions();

    if (permissionsGranted.isSuccess && permissionsGranted.data!) {
      // final location = await tz.getLocation(tz.local.name);

      final startDateTime = tz.TZDateTime.from(
        selectedDate.copyWith(
            hour: selectedTime.hour, minute: selectedTime.minute),
        tz.local,
      );

      final endDateTime = startDateTime.add(const Duration(
          hours: 1)); // Set the end time to 1 hour after the start time
      var calendars = (await calendar.retrieveCalendars()).data;
      final event = Event(
        calendars == null || calendars.isEmpty
            ? ((await calendar.createCalendar("Salon Appointments")).data)
            : calendars.first.id,
        title: "Salon Appointment",
        description:
            "Appointment booked at ${widget.salon.name} for the hairstyle : ${widget.style}",
        start: startDateTime,
        end: endDateTime,
        location: location,
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
              onPressed: () async {
                await _addToCalendar("Nairobi", selectedTime);
              },
              child: Text('Add to Calendar'),
            ),
          ],
        ),
      ),
    );
  }
}
