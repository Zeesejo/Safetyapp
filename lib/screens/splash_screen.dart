import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToSignUp();
  }

  Future<void> _navigateToSignUp() async {
    await Future.delayed(
        const Duration(seconds: 3)); // Adjust duration as needed

    // Check if the widget is still mounted before using context
    if (!mounted) return;

    Navigator.of(context)
        .pushReplacementNamed('/sign_up'); // Navigate to sign-up screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back_spl.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 55.0,
                child: Image.asset('assets/logo.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
