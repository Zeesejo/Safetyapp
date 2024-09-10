import 'package:flutter/material.dart';
import 'package:safemind/screens/forgot_password_screen.dart';
import 'package:safemind/screens/home_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/login_screen.dart';
import 'screens/login_form.dart';

void main() {
  runApp(const SafeMind());
}

class SafeMind extends StatelessWidget {
  const SafeMind({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafeMind App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/sign_up': (context) => const SignUpScreen(),
        '/login': (context) => const LoginScreen(),
        '/login_form': (context) => const LoginForm(),
        '/forgot_password': (context) => const ForgotPasswordScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
