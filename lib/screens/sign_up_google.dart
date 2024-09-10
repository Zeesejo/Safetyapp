import 'package:flutter/material.dart';

class SignUpGooglePage extends StatelessWidget {
  const SignUpGooglePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up with Google'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Up using your Google account',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle Google Sign-Up
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF5DADE2),
              ),
              child: const Text(
                'Sign Up with Google',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
