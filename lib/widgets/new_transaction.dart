import 'dart:ffi';

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleTextController = TextEditingController();
  final amountTextController = TextEditingController();
  final Function addNewTransaction;
  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              autocorrect: true,
              autofocus: true,
              decoration: InputDecoration(labelText: 'Title'),
              cursorColor: Colors.teal[600],
              style: TextStyle(color: Colors.teal[600]),
              controller: titleTextController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              cursorColor: Colors.teal[600],
              style: TextStyle(color: Colors.teal[600]),
              controller: amountTextController,
            ),
            FlatButton(
              onPressed: () {
                addNewTransaction(titleTextController.text,
                    double.parse(amountTextController.text));
              },
              child: Text('Add transaction'),
              textColor: Colors.teal[600],
            )
          ],
        ),
      ),
    );
  }
}
