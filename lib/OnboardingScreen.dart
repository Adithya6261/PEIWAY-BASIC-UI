// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_application_2/login_form.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: ClampingScrollPhysics(),
            pageSnapping: true,
            controller: _controller,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
              if (page < 2) {
                FocusScope.of(context).requestFocus(FocusNode());
              }
            },
            children: [
              Center(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/discover.png'),
                      SizedBox(height: 30),
                      Text('Discover',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/route.png'),
                      SizedBox(height: 30),
                      Text('Find best routes',
                          style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/places.png'),
                      SizedBox(height: 30),
                      Text('Rates',
                          style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    _controller.animateToPage(2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease);
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                DotsIndicator(
                  dotsCount: 3,
                  position: _currentPage.toInt(),
                  decorator: DotsDecorator(
                    size: Size.fromRadius(4.0),
                    activeSize: Size.fromRadius(6.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Colors.black,
                    activeColor: Colors.green,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (_currentPage < 2) {
                      _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease);
                    } else {
                      // Navigate to next screen or perform desired action
                    }
                  },
                    child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginForm(),
                        ),
                      );
                    },
                  child: Text(
                    _currentPage < 2 ? 'Next' : 'Login',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
