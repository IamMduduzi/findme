import 'package:findme/widgets/Pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Check if running on the web
  if (kIsWeb) {
    // Initialize Firebase for web
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyABtNikWWuoshEnO6XYb_Oh0pRPXhB7VWQ",
        authDomain: "findmeproject-4b39e.firebaseapp.com",
        projectId: "findmeproject-4b39e",
        storageBucket: "findmeproject-4b39e.appspot.com",
        messagingSenderId: "496845965217",
        appId: "1:496845965217:web:d23e4fdde55dada78f6de0",
      ),
    );
  } else {
    // Initialize Firebase for mobile platforms
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find Me',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: const LoginScreen(), // Replace with SignupPage() if needed
    );
  }
}
