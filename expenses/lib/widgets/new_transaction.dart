import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final inputTitleController = TextEditingController();

  final inputAmountController = TextEditingController();

  void submitData() {
    final amountEntered = double.parse(inputAmountController.text);
    final titleEntered = inputTitleController.text;

    if (titleEntered.isEmpty || amountEntered <= 0) {
      return;
    }

    this.widget.addNewTransaction(
          titleEntered,
          amountEntered,
        );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  controller: inputTitleController,
                  onSubmitted: (_) => submitData(),
                  decoration:
                      InputDecoration(labelText: 'What did you spend on'),
                ),
                TextField(
                  controller: inputAmountController,
                  onSubmitted: (_) => submitData(),
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(labelText: 'How much did you spend?'),
                ),
                FlatButton(
                  child: Text('Add Expense'),
                  onPressed: submitData,
                  textColor: Theme.of(context).primaryColor,
                ),
              ])),
    );
  }
}
