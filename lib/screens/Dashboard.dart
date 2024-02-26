import 'package:flutter/material.dart';
import 'dart:math';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text = "Hello from dashboard"; // Define text here
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Text(
          text,
          style: TextStyle(fontSize: 24), // Add style if needed
        )));
  }
}
