import 'package:flutter/material.dart';

import './widgets/transaction_list.dart';
import './widgets/new_transaction.dart';
import './models/transaction.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expenses',
      theme:ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  void _startNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return NewTransaction(_addNewTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () => _startNewTransaction(context)),
        ],
        title: Center(
          child: Text('Expenses'),
        ),
      ),
      body: ListView(children: <Widget>[
        Card(
          color: Theme.of(context).primaryColor,
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(15),
            width: double.infinity,
            child: Center(
              child: Text('Chart'),
            ),
          ),
          elevation: 5,
        ),
        TransactionList(_userTransactions)
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _startNewTransaction(context)),
    );
  }
}
