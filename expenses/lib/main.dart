import 'package:flutter/material.dart';

import './widgets/user_transaction.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Expenses', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  // final inputTitle = TextEditingController();
  // final inputAmount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Expenses'),
          ),
        ),
        body: ListView(children: <Widget>[
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
          UserTransactions(),
        ]));
  }
}
