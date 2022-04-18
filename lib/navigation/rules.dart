import 'package:flutter/material.dart';

class Rules extends StatefulWidget {
  const Rules({Key? key}) : super(key: key);

  @override
  State<Rules> createState() => _AboutState();
}

class _AboutState extends State<Rules> {
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
                  'Rules',
                  style: TextStyle(fontSize: 35),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'No Rules 😁',
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
