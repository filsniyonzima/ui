import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login page'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Text
            const Center(
              child: Text(
                'Welcome',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 50),

            // Username Label
            const Text('Enter username', style: TextStyle(fontSize: 16)),

            const SizedBox(height: 5),

            // Username TextField
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),

            const SizedBox(height: 20),

            // Password Label
            const Text('Enter password', style: TextStyle(fontSize: 16)),

            const SizedBox(height: 5),

            // Password TextField
            const TextField(
              obscureText: true,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),

            const SizedBox(height: 30),

            // Login Button
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
