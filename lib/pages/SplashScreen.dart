import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color as needed
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your splash screen content here
            Image.asset('images/melody.jpg'), // Replace with your image path
            const SizedBox(height: 20),
            const Text(
              'Organization Hub',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Customize text color
              ),
            ),
            const SizedBox(height: 10),
            const CircularProgressIndicator(), // Or any other loading indicator
          ],
        ),
      ),
    );
  }
}
