import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> expenses = [
    Transaction(
      id: "001",
      title: "New Shoes",
      amount: 9.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "002",
      title: "Icecream",
      amount: 0.99,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpenseTracker"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Card(
                    color: Colors.blue,
                    child: Text("CHART!"),
                    elevation: 5,
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Container(                    
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Name",
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Amount",
                          ),
                        ),
                        FlatButton(
                          textColor: Colors.blueAccent,
                          onPressed: () => {},
                          child: Text(
                            "Save",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  // This return a list of widgets
                  // toList() is function that generates a list from iterables
                  // iterables are objects like list which can be iterated
                  children: expenses.map((tx) {
                    return Card(
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.deepOrange,
                                width: 2,
                              ),
                            ),
                            child: Text(
                              '\$${tx.amount}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                tx.title,
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                DateFormat('MMM d, yyyy').format(tx.date),
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
