import 'package:flutter/material.dart';
import 'package:trivia/TestPage1/TScreen.dart';
import 'package:trivia/TestPage1/FScreen.dart';

enum answers { start, first, second, third, fourth }

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  answers _value = answers.start;

  void getResult() {
    if (_value == answers.start) {
      return;
    } else if (_value == answers.fourth) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return TScreen();
      }));
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return FScreen();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Android Trivia (1/3)'),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 280,
                width: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Android.png'),
                  ),
                ),
              ),
              Text(
                'Mark a layout for Data Binding ?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 105, 105, 105),
                  fontSize: 25,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 300,
                child: Row(
                  children: [
                    Radio(
                        value: answers.first,
                        groupValue: _value,
                        onChanged: (answers? val) {
                          setState(() {
                            _value = val!;
                          });
                        }),
                    Text(
                      '<binding>',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                child: Row(
                  children: [
                    Radio(
                        value: answers.second,
                        groupValue: _value,
                        onChanged: (answers? val) {
                          setState(() {
                            _value = val!;
                          });
                        }),
                    Text(
                      '<data-binding>',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                child: Row(
                  children: [
                    Radio(
                        value: answers.third,
                        groupValue: _value,
                        onChanged: (answers? val) {
                          setState(() {
                            _value = val!;
                          });
                        }),
                    Text(
                      '<dbinding>',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                child: Row(
                  children: [
                    Radio(
                        value: answers.fourth,
                        groupValue: _value,
                        onChanged: (answers? val) {
                          setState(() {
                            _value = val!;
                          });
                        }),
                    Text(
                      '<Layout>',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  getResult();
                },
                color: Color.fromARGB(255, 206, 205, 205),
                child: Text(
                  'SUBMIT',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
