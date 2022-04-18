import 'package:flutter/material.dart';
import 'package:trivia/main.dart';

class TScreen extends StatefulWidget {
  const TScreen({Key? key}) : super(key: key);

  @override
  State<TScreen> createState() => _TScreenState();
}

class _TScreenState extends State<TScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 183, 248, 201),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Android Trivia (True)'),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Center(
                child: Container(
                  height: 450,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/FullAndroid.png'),
                    ),
                  ),
                ),
              ),
              Text(
                'Congratulations!',
                style: TextStyle(fontSize: 50),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),

                // ignore: deprecated_member_use
                child: RaisedButton(
                  elevation: 2,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => Trivia()),
                      ),
                    );
                  },
                  color: Color.fromARGB(255, 206, 205, 205),
                  child: Text(
                    'Go First Page',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 39, 176, 69)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
