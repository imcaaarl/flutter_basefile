import 'package:flutter/material.dart';
import 'package:base/widgets/transaction_list.dart';
import 'package:base/widgets/new_transactions.dart';
import 'package:base/models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  void _addNewTransaction(String itemName, double itemAmount) {
    final newTransaction = Transaction(
      title: itemName,
      amount: itemAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      expenses.add(newTransaction);
    });
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return NewTransaction(_addNewTransaction);
      },
      backgroundColor: Colors.indigo,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("XPense"),
        actions: <Widget>[
          IconButton(
            onPressed: () => _startAddNewTransaction(context),
            icon: Icon(
              Icons.add,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  // Container(
                  //   width: double.infinity,
                  //   child: Card(
                  //     color: Theme.of(context).primaryColor,
                  //     child: Text("CHART!"),
                  //     elevation: 5,
                  //   ),
                  // ),
                  TransactionList(expenses),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewTransaction(context),
      ),
    );
  }
}
