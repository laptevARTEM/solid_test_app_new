import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  static Color randomColor() {
    return Color(Random().nextInt(0xffffffff));
  }

  @override
  Widget build(BuildContext context) {
    Color bg_color = randomColor();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bg_color,
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: (){
            setState(() {
              bg_color = randomColor();
            });
          },
          child: Center(
            child: Text(
              'Hey There',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}