import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:organization_hub/pages/SplashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter bindings are initialized

  // Initialize Hive
  await _initHive();

  // Run the app
  runApp(const MyApp());
}

Future<void> _initHive() async {
  // Get the application documents directory
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();

  // Set the Hive database directory
  Hive.init(appDocumentDir.path);

  // Open any Hive boxes that you need to use
  await Hive.openBox('users');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Organization Hub',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const SplashScreen(), // Start with the splash screen as your initial first screen
    );
  }
}
