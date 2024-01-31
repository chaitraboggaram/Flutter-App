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
        child: ElevatedButton.icon(
          onPressed: () {
            print("You clicked me"); // On click will display this in console
          },
          icon: Icon(
            Icons.mail,
            color: Colors.white,
          ), // Corrected line: wrap Icons.mail with Icon widget
          label: Text(
            'Mail me',
            style: TextStyle(
              color: Colors.white,
            ),
          ), // Uncommented line: added label for visible content
          style: ElevatedButton.styleFrom(
            primary: Colors.pink,
          ),
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
