import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text("Profiles"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Profile()),
          );
        },
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Profile Page"),
    );
  }
}
