import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP GET"),
      ),
      body: Container(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              return Container(child: Text("Data: ${snapshot.data}"),);
            }
            return Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                ],
              ),
            );
          },
        ),),
    );
  }
}

Future<dynamic> getData() async{
   final String url = "https://jsonplaceholder.typicode.com/users/1";
   final response = await http.get(url);
   return json.decode(response.body);
}