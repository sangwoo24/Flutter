import 'package:flutter/material.dart';

void main() => runApp(WidgetTutorial());

class WidgetTutorial extends StatelessWidget {
  const WidgetTutorial({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('BBANTO'),
        backgroundColor: Colors.amber[700],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/picka.png'),
                radius: 60,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30,
            ),
            Text('NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('BBANTO',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text('BBANTO POWER LEVEL',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('14',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 30,
                ),
                Text('using lightsaber',
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
                        Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 30,
                ),
                Text('face hero tatto',
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 30,
                ),
                Text('fire flames',
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/pichu.webp'),
                radius: 40,
                backgroundColor: Colors.amber[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}