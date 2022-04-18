import 'package:flutter/material.dart';
import 'package:trivia/TestPage1/TestScreen.dart';
import 'TScreen.dart';

class FScreen extends StatefulWidget {
  const FScreen({Key? key}) : super(key: key);

  @override
  State<FScreen> createState() => _FScreenState();
}

class _FScreenState extends State<FScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 187, 208),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Android Trivia (False)'),
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
                'Try Again',
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
                        builder: ((context) => TestScreen()),
                      ),
                    );
                  },
                  color: Color.fromARGB(255, 206, 205, 205),
                  child: Text(
                    'TRY AGAIN?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.purple),
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
