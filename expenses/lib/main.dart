import 'package:flutter/material.dart';

import './transaction.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Expenses', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: '1', title: 'Shoes', amount: 100, date: DateTime.now()),
    Transaction(id: '2', title: 'Shirts', amount: 90, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Expenses'),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              color: Colors.blue,
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
            Column(
              children: transactions.map((txn) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(15),
                        child: Text(txn.amount.toString()),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                      ),
                      Column(children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          child: Text(txn.title),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          child: Text(
                            txn.date.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ])
                    ],
                  ),
                );
              }).toList(),
            ),
          ]),
    );
  }
}
