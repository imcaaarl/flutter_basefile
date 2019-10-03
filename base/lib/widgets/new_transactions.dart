import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTransaction;
  NewTransaction(this.addTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final itemController = TextEditingController();

  final amountController = TextEditingController();

  void submitExpense() {
    final enteredItemName = itemController.text;
    final enteredItemAmount = double.parse(amountController.text);

    if(enteredItemName.isEmpty || enteredItemAmount <= 0){
      return;
    }

    widget.addTransaction(
      itemController.text,
      double.parse(amountController.text),
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Item",
              ),
              controller: itemController,
              onSubmitted: (_) => submitExpense(),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Amount",
              ),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitExpense(),
            ),
            FlatButton(
              textColor: Colors.blueAccent,
              onPressed: submitExpense,
              child: Text(
                "Save",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.indigo,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
