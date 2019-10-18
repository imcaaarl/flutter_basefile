import 'package:flutter/material.dart';

class DetailsRoute extends StatelessWidget {
  static const List personDetails = [
    {"name" : "Juan Dela Cruz", "gender": "Male", "age": "18"},
    {"name" : "Juan Dela Cruz", "gender": "Female", "age": "18"},
  ];

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments;
    int _index = int.parse(args);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(personDetails[_index]["name"]),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(personDetails[_index]["gender"]),
            Text(personDetails[_index]["age"])
          ],
        ),
      ),
    );
  }
}
