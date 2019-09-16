import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
   
  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Container(          
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              Text(_counter.toString()),
              OutlineButton(
                onPressed: () => _incrementCounter(),
                child: Text("Increment"),
              ),
              OutlineButton(
                onPressed: () => _decrementCounter(),
                child: Text("Decrement"),
              )
            ],
          ),
        ));
  }
}
