import 'package:flutter/material.dart';
import 'dart:math';

class Dashboard extends StatelessWidget{
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'.toUpperCase()),
          backgroundColor: Colors.blueGrey,
        ),
        body: 
        // Image.asset("path"),
        // Image.network("path"),
        Image(
          image: AssetImage("images/th.jpeg"),
          // image:
          width: 800.0,
          height: 300.0,

          // image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.Ddrn76R4x07_V3ZKJNbtywHaEK&pid=Api&P=0&h=220"),
        )
      );
  }
}

// flutter fat arrow behave like this
int getNumber()=> Random().nextInt(100);

//flutter function behave like this
// int getNumber() {
//   return Random().nextInt(100);
// }
