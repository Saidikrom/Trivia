import 'package:flutter/material.dart';
import 'FScreen2.dart';
import 'TScreen2.dart';

enum answers { start, first, second, third, fourth }

class TestScreen2 extends StatefulWidget {
  const TestScreen2({Key? key}) : super(key: key);

  @override
  State<TestScreen2> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen2> {
  answers _value = answers.start;

  void getResult() {
    if (_value == answers.start) {
      return;
    } else if (_value == answers.second) {
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
        title: Text('Android Trivia (2/3)'),
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
                'Android Navigation Component ?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 105, 105, 105),
                  fontSize: 30,
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
                      'NavCentral',
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
                      'NavMaster',
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
                      'NavController',
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
                      'NavSwitcher',
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
