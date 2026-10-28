import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Widgets & Themes',

      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),

      home: const HomeScreen(),
    );
  }
}

// Custom Button Widget
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

// Home Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widgets'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.account_circle,
              size: 100,
              color: Colors.blue,
            ),

            const SizedBox(height: 20),

            const Text(
              'Student Login App',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            CustomButton(
              text: 'Login',
              onPressed: () {
                print('Login button pressed');
              },
            ),

            const SizedBox(height: 15),

            CustomButton(
              text: 'Register',
              onPressed: () {
                print('Register button pressed');
              },
            ),
          ],
        ),
      ),
    );
  }
}