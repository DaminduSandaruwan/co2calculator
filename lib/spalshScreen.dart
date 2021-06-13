import 'dart:async';
import 'package:co2calculator/homepage.dart';
import 'package:flutter/material.dart';

class HomeSplashScreen extends StatefulWidget {
  @override
  _HomeSplashScreenState createState() => _HomeSplashScreenState();
}

class _HomeSplashScreenState extends State<HomeSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/livegreen.jpg', height: MediaQuery.of(context).size.height, fit: BoxFit.contain,),
            ],
          ),
        ),
      ),
    );
  }
}
