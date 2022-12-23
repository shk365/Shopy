import 'dart:async';
import 'dart:html';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shopy/screens/login/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      child: Center(
        child: AnimatedTextKit(
          totalRepeatCount: 1,
          animatedTexts: [
            WavyAnimatedText('Shopy',
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  decoration: TextDecoration.none
                )),
          ],
        ),
      ),
    );
  }
}
