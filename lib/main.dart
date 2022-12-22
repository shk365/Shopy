import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:shopy/screens/login/login.dart';

void main() {
  runApp(
    DevicePreview(builder: (context) => MyApp())
  );
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopy',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

