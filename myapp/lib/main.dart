import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          "Straw Hat Pirates",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Oswald',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,     // Removes the drop shadow from the app
      ),
      
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/robin.jpeg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.grey[800],
            ),
            Text(
              "NAME",
              style: TextStyle(
                fontFamily: 'Oswald',
                color: Colors.white,
                letterSpacing: 2.0,   // Gives 2 pixels of space between each letter
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "Nico Robin",
              style: TextStyle(
                fontFamily: 'Oswald',
                color: Colors.yellow[300],
                // fontWeight: FontWeight.w200,
                fontSize: 28,
                letterSpacing: 2.0,   // Gives 2 pixels of space between each letter
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "MEMBER NUMBER",
              style: TextStyle(
                fontFamily: 'Oswald',
                color: Colors.white,
                letterSpacing: 2.0,   // Gives 2 pixels of space between each letter
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "7",
              style: TextStyle(
                fontFamily: 'Oswald',
                color: Colors.yellow[300],
                // fontWeight: FontWeight.w200,
                fontSize: 28,
                letterSpacing: 2.0,   // Gives 2 pixels of space between each letter
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "ABOUT",
              style: TextStyle(
                fontFamily: 'Oswald',
                color: Colors.white,
                letterSpacing: 2.0,   // Gives 2 pixels of space between each letter
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "Nico Robin has the ability to sprout duplicate body parts from any surface and control them. This ability is called Hana Hana no Mi, which is a Paramecia-type Devil Fruit. Robin can sprout over a thousand body parts simultaneously, including arms, legs, nets, and wings. She can also use her powers to form giant arms and legs to defeat enemies.",
              style: TextStyle(
              fontFamily: 'Oswald',
              color: Colors.yellow[300],
              // fontWeight: FontWeight.w200,
              letterSpacing: 2.0,   // Gives 2 pixels of space between each letter
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0,),
                Text(
                  "straw_hat_pirates@onepiece.com",
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    color: Colors.white,
                    letterSpacing: 1.0,
                  )
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
