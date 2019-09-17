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
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  var t = TestClass();
  void increment() { 
      counter = t.increment(counter);
  }

  void decrement() {
    if(counter > 0){
       counter = t.decrement(counter);
    }   
  }

  void refresh(){
    setState(() {
      
    });
  }

  void reset(){
    setState(() {
       counter = 0; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic++"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.center,
                  child: Center(
                    child: Text(
                      counter.toString(),
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.red,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: OutlineButton(
                    color: Colors.blueAccent,
                    onPressed: increment,
                    child: Text("INCREMENT"),
                  ),
                ),
                Expanded(
                  child: OutlineButton(
                    color: Colors.redAccent,
                    onPressed: decrement,
                    child: Text("DECREMENT"),
                  ),
                ),
                Expanded(
                  child: OutlineButton(
                    color: Colors.redAccent,
                    onPressed: refresh,
                    child: Text("REFRESH"),
                  ),
                ),
                Expanded(
                  child: OutlineButton(
                    color: Colors.redAccent,
                    onPressed: reset,
                    child: Text("RESET"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TestClass{
   increment(x){
     return x++;
   }

   decrement(x){
     return x--;
   }
}
