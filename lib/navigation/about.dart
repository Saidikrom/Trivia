import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Trivia'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  width: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Trivia.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  'About',
                  style: TextStyle(fontSize: 35),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Android Trivia will help remind you of important concepts you have learned and will learn in Android development.',
                    style: TextStyle(fontSize: 20),
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
