import 'package:flutter/material.dart';

class TaskDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task Details"),),
      body: Container(
        alignment: Alignment.center,
        child: Text("Tasks Details"),
      ),
    );
  }
}
