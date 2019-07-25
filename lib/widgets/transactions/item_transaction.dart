import 'package:flutter/material.dart';
import '../../models/transaction.dart';
import 'package:intl/intl.dart';

class ItemTransaction extends StatelessWidget {
  final Transaction transaction;

  ItemTransaction(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
                border: Border.all(
              color: Theme.of(context).primaryColor,
              width: 2,
            )),
            padding: EdgeInsets.all(10),
            child: Text(
              '\$${transaction.amount.toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                transaction.title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                DateFormat.yMMMd().format(transaction.date),
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
