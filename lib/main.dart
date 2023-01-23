import 'package:flutter/material.dart';
import 'package:flutter_travel_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

const primaryColor = Color(0xff29274F);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: primaryColor,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen());
  }
}
