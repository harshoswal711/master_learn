import 'package:flutter/material.dart';
import 'login.dart';
import 'splashscreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {rn

  final bagcolor = const Color(0xFF192A56);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Master Learn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(''),
    );
  }
}