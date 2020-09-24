import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Expenses', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Expenses'),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
        Card(
          color: Colors.blue,
          child: Container(
            width : double.infinity,
            child : Center(
              child: Text('Chart'),
              ),
            ),
          elevation: 5,
          ),
        Card(
          color: Colors.red,
          child: Center(child: Text('List of Transactions'),),
          ),
      ]),
    );
  }
}
