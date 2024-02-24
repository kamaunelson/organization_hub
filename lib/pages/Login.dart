import 'package:flutter/material.dart';
import 'package:organization_hub/pages/Register.dart'; // Import Register.dart file for signup page

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Organization Hub')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {}, // Placeholder for login functionality
              child: const Text('Login'),
            ),
            const SizedBox(height: 10), // Added spacing between the login button and other links
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector( // GestureDetector for the signup link
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Register()), // Navigate to the Register.dart file for signup page
                    );
                  },
                  child: const Text(
                    'Sign Up', // Text for the signup link
                    style: TextStyle(
                      color: Colors.blue, // Customize the color of the signup link
                      decoration: TextDecoration.none, // Add underline decoration to the text
                    ),
                  ),
                ),
                GestureDetector( // GestureDetector for the forgot password link
                  onTap: () {
                    // Add functionality to handle forgot password
                  },
                  child: const Text(
                    'Forgot Password?', // Text for the forgot password link
                    style: TextStyle(
                      color: Colors.blue, // Customize the color of the forgot password link
                      decoration: TextDecoration.none, // Add underline decoration to the text
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
