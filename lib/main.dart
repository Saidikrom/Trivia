import 'package:flutter/material.dart';
import 'TestPage1/TestScreen.dart';
import 'TestPage1/FScreen.dart';
import 'navbarDrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Trivia(),
    );
  }
}

class Trivia extends StatelessWidget {
  const Trivia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        actions: [],
        title: Text('Android Trivia'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Trivia.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => TestScreen())));
                  },
                  color: Color.fromARGB(255, 206, 205, 205),
                  child: Text(
                    'PLAY',
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
