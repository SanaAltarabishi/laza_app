import 'package:flutter/material.dart';

class extra extends StatefulWidget {
  const extra({super.key});

  @override
  State<extra> createState() => _extraState();
}

class _extraState extends State<extra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'images/page11.png',
      ),
    );
  }
}
