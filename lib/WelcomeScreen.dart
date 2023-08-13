import 'dart:async';

import 'package:flutter/material.dart';
import 'package:konark/LandingScreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Landing())));
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.grey],
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 30, color: Color(0xff27374D)),
            ),
            SizedBox(height: 20),
            Text(
              'Konark Computers',
              style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
                color: Color(0xff27374D),
              ),
            )
          ],
        ),
      ),
    );
  }
}
