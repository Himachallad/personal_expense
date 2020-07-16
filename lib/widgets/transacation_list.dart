import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
              child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  '\₹${transactions[index].amount.toString()}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.teal[600]),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal[600], width: 2)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    transactions[index].title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    DateFormat.yMMMd("en_US").format(transactions[index].date),
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ));
        },
        itemCount: transactions.length,
        // children: transactions.map((transaction) {
        //   return
        // }).toList(),
      ),
    );
  }
}
