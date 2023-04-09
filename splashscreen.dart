import 'dart:async';
import 'package:flutter/material.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay of 3 seconds before navigating to the next screen
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen1(),
            ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Add your splash screen image here
          Center(
            child: Image.asset(
              'assets/splash.png',
              width: MediaQuery.of(context).size.width * 0.90,
            ),
          ),
          SizedBox(height: 20),
          // Add a circular loading indicator with a yellow color
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
          ),
        ],
      ),
    );
  }
}
