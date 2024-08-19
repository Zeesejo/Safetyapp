import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home - SafeMind'),
      ),
      body: const Center(
        child: Text('Welcome to SafeMind!'),
      ),
    );
  }
}
