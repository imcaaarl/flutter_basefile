import "package:flutter/material.dart";

import './util/Router.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',      
      onGenerateRoute: Router.generateRoute,
    );
  }
}
