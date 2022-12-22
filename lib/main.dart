import 'package:flutter/material.dart';
import 'package:meble/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meblito',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Homepage(),
    );
  }
}
