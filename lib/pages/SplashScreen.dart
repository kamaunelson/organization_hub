import 'package:flutter/material.dart';
import 'package:organization_hub/pages/Login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Delay the navigation to simulate a splash screen
    Future.delayed(Duration(seconds: 5), () {
      // Navigate to the login screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white, // Set background color as needed
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'images/OrganizationHub.jpg', // image path
                fit: BoxFit.contain, // Adjust image fit to contain within the available space
              ),
            ),
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
            const CircularProgressIndicator(), // loading indicator
          ],
        ),
      ),
    );
  }
}
