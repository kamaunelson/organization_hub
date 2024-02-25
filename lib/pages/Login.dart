import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:organization_hub/pages/Landing.dart'; // Import Landing.dart file for the landing page
import 'package:organization_hub/pages/Register.dart'; // Import Register.dart file for signup page

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

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
            TextField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: const OutlineInputBorder(),
              ),
              onChanged: (value) => email = value,
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              onChanged: (value) => password = value,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _loginUser(context);
              },
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
                      MaterialPageRoute(builder: (context) => Register()), // Navigate to the Register.dart file for signup page
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

  void _loginUser(BuildContext context) async {
    // Open the Hive box for storing user data
    final userBox = await Hive.openBox('users');

    // Retrieve the user with the entered email from the Hive box
    final user = userBox.values.firstWhere((user) => user['email'] == email, orElse: () => null);

    // Check if user exists and password matches
    if (user != null && user['password'] == password) {
      // Navigate to the landing page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Landing()), // Navigate to the Landing.dart file for the landing page
      );
    } else {
      // Show error message for invalid credentials
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid email or password')),
      );
    }

    // Close the Hive box
    await userBox.close();
  }

  // Variables to store user input
  late String email;
  late String password;
}
