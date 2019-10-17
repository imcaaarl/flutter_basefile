import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context).settings;
    print(args);
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("Hello $args"),
            RaisedButton(
              child: Text("Go Back"),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
