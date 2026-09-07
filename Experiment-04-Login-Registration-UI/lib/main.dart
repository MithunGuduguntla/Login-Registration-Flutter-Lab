import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(const StudentApp());
}

class StudentApp extends StatelessWidget {
  const StudentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Student Login App',

      initialRoute: '/',

      routes: {
        '/': (context) => const LoginScreen(),
        '/registration': (context) => const RegistrationScreen(),
        '/dashboard': (context) => const DashboardScreen(),

        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: const Center(
        child: Text(
          "Student Profile",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}