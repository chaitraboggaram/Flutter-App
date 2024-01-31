import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    // Scaffold is like a wrapper to multiple widgets
    appBar: AppBar(
      title: Text("My App"),
      centerTitle: true,
    ),
    body: Center(
      child: Text("Hello, there!"),
      // to use another widget inside one widget we use child property
    ),
    floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed logic here
          print('Floating Action Button Pressed');
        },
        child: Text("Click")
    ),
  ),
));

