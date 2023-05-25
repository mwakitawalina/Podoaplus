import 'package:flutter/material.dart';
import 'package:salonbooking/frontend/signup.dart';

import 'frontend/sliderscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StyleSalon',
       debugShowCheckedModeBanner: false,
       theme: ThemeData(primarySwatch: Colors.pink),
       home: SliderScreen (),

    );
  }
}
