// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/OnboardingScreen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 100), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        ),
      );
    });
    
    return Scaffold(
      backgroundColor: Color(0Xff4DAF50),
      body: Center(
        child: Image.asset('assets/p.png'),
      ),
    );
  }
}
