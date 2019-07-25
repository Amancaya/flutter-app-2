import 'package:flutter/material.dart';
import '../empty_views/empty_list.dart';
import '../../models/transaction.dart';
import './item_transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty
          ? EmptyList()
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return ItemTransaction(transactions[index]);
              },
              itemCount: transactions.length,
            ),
    );
  }
}
