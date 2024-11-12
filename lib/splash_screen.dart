import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHomeScreen();
  }

  // Simulating a loading delay of 3 seconds before navigating to HomeScreen
  _navigateToHomeScreen() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,  // Background color similar to Netflix
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Full-screen image with BoxFit.cover to fill the screen
            Image.asset(
              'assets/splash_screen.png',
              fit: BoxFit.cover,
            ),
            // Gradient overlay to dim the image (like Netflix)
            Container(
              color: Colors.black.withOpacity(0.6),  // Dim the background
            ),
            // Centered text/logo with fade-in effect
            Center(
              child: AnimatedOpacity(
                opacity: 1.0,
                duration: const Duration(seconds: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // App logo or name in white
                    const Text(
                      'Movie App',
                      style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 2.0,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // A Netflix-style loading indicator (optional)
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red.shade500),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
