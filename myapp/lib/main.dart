import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));


class Home extends StatelessWidget {
  // The build function written here will override the function content that is defined inside the class's Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(// Scaffold is like a wrapper to multiple widgets
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
        child: Image(
          image: AssetImage('assets/space2.jpeg'), // Save images in assets folder and update pubspec.lock
        )

        // to use another widget inside one widget we use child property
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
          "Click",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Oswald',
          ),
        ),
        backgroundColor: Colors.pink[600],
      ),
    );
  }
}
