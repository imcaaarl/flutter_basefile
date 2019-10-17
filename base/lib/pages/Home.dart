import 'package:base/util/Router.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Goto Settings"),
              onPressed: () => Navigator.pushNamed(context, settingsRoute),
            )
          ],
        ),
      ),
    );
  }
}
