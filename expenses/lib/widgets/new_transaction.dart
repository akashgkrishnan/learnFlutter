import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;
  final inputTitleController = TextEditingController();
  final inputAmountController = TextEditingController();

  NewTransaction(this.addNewTransaction);

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
                  decoration:
                      InputDecoration(labelText: 'What did you spend on'),
                ),
                TextField(
                  // onChanged: (value) {
                  //   inputAmount = value;
                  // },
                  controller: inputAmountController,
                  decoration:
                      InputDecoration(labelText: 'How much did you spend?'),
                ),
                FlatButton(
                  child: Text('Add Expense'),
                  onPressed: () {
                    this.addNewTransaction(
                      inputTitleController.text,
                      double.parse(inputAmountController.text),
                    );
                  },
                  textColor: Colors.purple,
                ),
              ])),
    );
  }
}
