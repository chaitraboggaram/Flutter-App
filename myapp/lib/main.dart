import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    // Scaffold is like a wrapper to multiple widgets
    appBar: AppBar(
      title: Text(
        "My App",
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Oswald',
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.pink[600], // check material pallete for colors
    ),
    body: Center(
      child: Text(
        "Hello, there!",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Oswald',
        ),
      ),
      // to use another widget inside one widget we use child property
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Text("Click"),
      backgroundColor: Colors.pink[600],
    ),
  ),
));
