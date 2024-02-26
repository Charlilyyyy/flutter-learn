import 'package:flutter/material.dart';
import 'dart:async';
import 'Dashboard.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    // Start a timer for 3 seconds
    _timer = Timer(Duration(seconds: 3), () {
      // Navigate to the main screen after 3 seconds
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(builder: (context) => Dashboard()),
      // );

      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => Dashboard(),
          transitionDuration: Duration(milliseconds: 0), // Set transition duration to 0 for no animation
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return child;
          },
        ),
      );
    });
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is removed from the widget tree
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Icon(
          Icons.alt_route_rounded,
          size: 100.0,
          color: Colors.amber,
        ),
      ),
    );
  }
}
