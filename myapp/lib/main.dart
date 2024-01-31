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
        child: IconButton(
          onPressed: () {
            print("You clicked me");
          },
          icon: Icon(Icons.mail),
        )
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
