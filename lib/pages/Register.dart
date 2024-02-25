import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Register')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => name = value,
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => email = value,
            ),
            const SizedBox(height: 10),
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
                _registerUser(context);
              },
              child: const Text('Submit'),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Navigate back to the login page
                  },
                  child: const Text(
                    'Login here', // Text for the login link
                    style: TextStyle(
                      color: Colors.blue, // Customize the color of the login link
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

  void _registerUser(BuildContext context) async {
    // Open the Hive box for storing user data
    final userBox = await Hive.openBox('users');

    // Create a user object with the entered data
    final user = {
      'name': name,
      'email': email,
      'password': password,
    };

    // Add the user to the Hive box
    await userBox.add(user);

    // Close the Hive box
    await userBox.close();

    // Navigate back to the login page
    Navigator.pop(context);
  }

  // Variables to store user input
  late String name;
  late String email;
  late String password;
}
