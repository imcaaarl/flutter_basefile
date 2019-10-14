import 'package:flutter/material.dart';

import './pages/Home.dart';
import './pages/Task.dart';
import './pages/Settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(primarySwatch: Colors.blue),
       home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedPage = 0;

  final _pageOptions = [
      HomePage(),
      TaskPage(),
      SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage, 
        onTap: (int index){
        setState(() {
           _selectedPage = index; 
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Home")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text("Task")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text("Settings")
        )
      ],),
    );
  }
}