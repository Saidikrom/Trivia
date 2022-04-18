import 'package:flutter/material.dart';
import 'navigation/about.dart';
import 'navigation/Rules.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 30, 116, 68),
            child: Image.asset('assets/Triviapng.png'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Rules())));
            },
            leading: Icon(Icons.article_outlined),
            title: Text('Rules'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => About())));
            },
            leading: Icon(Icons.android_outlined),
            title: Text('About'),
          ),
        ],
      ),
    );
  }
}
