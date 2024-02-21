import 'package:flutter/material.dart';
import 'package:organization_hub/pages/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Organization Hub',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
          home: const SplashScreen(), //start with this screen as your initial first screen
    );
  }
}



