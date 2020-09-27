import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  State createState() {
    return _UserTransactionState();
  }
}

class _UserTransactionState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(id: '1', title: 'Shoes', amount: 100, date: DateTime.now()),
    Transaction(id: '2', title: 'Shirts', amount: 90, date: DateTime.now()),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTxn = Transaction(
      id: title,
      title: title,
      date: DateTime.now(),
      amount: amount,
    );
    setState(() {
      _userTransactions.add(newTxn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTransaction),
      TransactionList(_userTransactions)
    ]);
  }
}
