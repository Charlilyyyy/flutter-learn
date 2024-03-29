import 'package:flutter/material.dart';
import 'screens/Dashboard.dart';
import 'screens/Splashscreen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'My First App',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Splashscreen()
    );
  }
}