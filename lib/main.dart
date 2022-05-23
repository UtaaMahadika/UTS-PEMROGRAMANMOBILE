import 'package:flutter/material.dart';
import 'page/chat.dart';
import 'page/profile.dart';
import 'page/loker.dart';

void main() {
  runApp(new MaterialApp(
    title: "My Apps",
    debugShowCheckedModeBanner: false,
    home: new Halamannav(),
  ));
}

class Halamannav extends StatefulWidget {
  @override
  _HalamannavState createState() => _HalamannavState();
}

class _HalamannavState extends State {
  int _selectedIndex = 0;

  final _widgetOptions = [
    Halamansatu(),
    Halamandua(),
    Halamantiga(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cases),
            title: Text('LoKer'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            title: Text('Profile'),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        fixedColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
