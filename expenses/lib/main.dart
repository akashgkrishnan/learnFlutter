import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  final inputTitle = TextEditingController();
  final inputAmount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Expenses'),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
            Card(
              elevation: 5,
              child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextField(
                          // onChanged: (value) {
                          //   inputTitle = value;
                          // },
                          controller : inputTitle,
                          decoration: InputDecoration(
                              labelText: 'What did you spend on'),
                        ),
                        TextField(
                          // onChanged: (value) {
                          //   inputAmount = value;
                          // },
                          controller: inputAmount,
                          decoration: InputDecoration(
                              labelText: 'How much did you spend?'),
                        ),
                        FlatButton(
                          child: Text('Add Expense'),
                          onPressed: () {
                            print(inputTitle.text);
                            print(inputAmount.text);
                          },
                          textColor: Colors.purple,
                        ),
                      ])),
            ),
            Column(
              children: transactions.map((txn) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '\$ ${txn.amount.toString()}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple,
                            width: 2,
                          ),
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                txn.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                  DateFormat('dd-MMM-yyyy').format(txn.date),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black,
                                  )),
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
