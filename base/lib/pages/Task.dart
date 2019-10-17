import 'package:base/util/Router.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () => Navigator.pushNamed(context, taskDetailsRoute),
            child: Text("Goto Details", style: TextStyle(
               fontSize: 25,
            )),
          ),
        ],
      ),
    );
  }
}
