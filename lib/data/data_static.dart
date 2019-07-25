import '../models/transaction.dart';

class DataStatic {
  static List<Transaction> transactions() => [
        Transaction(
          id: 't1',
          title: 'New Shoes',
          amount: 69.99,
          date: DateTime.now(),
        ),
        Transaction(
          id: 't2',
          title: 'Weekly Groceries',
          amount: 16.53,
          date: DateTime.now(),
        ),
      ];
}
