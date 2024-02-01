import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My App",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Oswald',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink[600],
      ),
      body: Center(
        child: Container(
        // Takes up all the space that is available and manages it i.e acts as wrapper
          color: Colors.blue,
          child: Text(
            "Hello, there!",
            // Now as we have child widget the container takes space of only the child widget and not whole space
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),      // Apply 20 & 50 pixels of padding around all edges inside the container
          margin: EdgeInsets.all(30),       // Apply 30 padding around the container
        ),
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
