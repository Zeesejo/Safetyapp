// lib/screens/sign_up_screen.dart

import 'package:flutter/material.dart';
// Update this based on the actual location
import 'package:safemind/screens/sign_up_form.dart'; // Path for the sign-up form
import 'package:safemind/screens/sign_up_google.dart'; // Path for the Google sign-up
import 'package:safemind/screens/login_screen.dart'; // Import the login screen

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/back_spl.png'), // Path to your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 55.0,
                        child: Image.asset('assets/logo.png'),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: 'Safe',
                            style: TextStyle(
                              color: Color(0xFF58D68D),
                              fontSize: 28.0,
                              shadows: [
                                Shadow(
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          TextSpan(
                            text: 'Mind',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              shadows: [
                                Shadow(
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    // Email Sign-Up Button
                    SizedBox(
                      width: double.infinity,
                      height: 47,
                      child: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.mail,
                          size: 20.0,
                          color: Colors.black87,
                        ),
                        label: const Text(
                          'Continue with Email',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF58D68D),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpFormPage()),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Google Sign-Up Button
                    SizedBox(
                      width: double.infinity,
                      height: 47,
                      child: ElevatedButton.icon(
                        icon: Image.asset(
                          'assets/images/search.png',
                          height: 20,
                          width: 20,
                        ),
                        label: const Text(
                          'Continue with Google',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5DADE2),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpGooglePage()),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    // "Already have an account? Log in" Link
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                          children: [
                            TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            TextSpan(
                              text: 'Log in',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                  height: 20), // Add space before the bottom of the screen
            ],
          ),
        ],
      ),
    );
  }
}
