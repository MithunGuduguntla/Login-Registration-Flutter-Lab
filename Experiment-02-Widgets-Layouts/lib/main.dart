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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Experiment 2 - Widgets & Layouts'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.person,
                size: 80,
              ),

              const SizedBox(height: 20),

              const Text(
                'Login & Registration App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  print('Login Button Pressed');
                },
                child: const Text('Login'),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  print('Register Button Pressed');
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}