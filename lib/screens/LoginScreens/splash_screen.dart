import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medicine_app/screens/LoginScreens/starting_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const StartingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white, Colors.lightBlue],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 240,),
            Image.asset('assets/images/splash_img.png'),
            const SizedBox(height: 50,),
            Image.asset('assets/images/OkApna.png')
          ],
        ),
      ),
    );
  }
}
