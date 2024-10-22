// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather_app/config/devinfo.dart';
import 'package:weather_app/views/home_screen.dart';

import 'views/search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        '/searchScreen': (context) => SearchScreen(),
        '/devinfo': (context) => DevInfo(),
      },
    );
  }
}
