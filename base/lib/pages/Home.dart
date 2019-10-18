import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void doNavigate(String route, dynamic obj) {
      Navigator.pushNamed(context, route, arguments: obj);
    }
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Juan Dela Cruz'),
              onPressed: () {
                doNavigate("/details", "0");
              },
            ),
            RaisedButton(
              child: Text('Juana Dela Cruz'),
              onPressed: () {
                doNavigate("/details", "1");
              },
            ),
          ],
        ),
      ),
    );
  }
}
