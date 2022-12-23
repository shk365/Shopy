import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:shopy/screens/login/login.dart';
import 'package:shopy/splash_screen.dart';

void main() {
  runApp(
    DevicePreview(builder: (context) => const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopy',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

