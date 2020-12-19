import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final _inputTitleController = TextEditingController();

  final _inputAmountController = TextEditingController();

  DateTime _selectedDate;

  void   _printDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      } else {
        setState(() {
          _selectedDate = pickedDate;
        });
      }
    });
  }

  void _submitData() {
    final amountEntered = double.parse(_inputAmountController.text);
    final titleEntered = _inputTitleController.text;

    if (titleEntered.isEmpty || amountEntered <= 0 || _selectedDate == null) {
      return;
    }

    this.widget.addNewTransaction(
          titleEntered,
          amountEntered,
          _selectedDate
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
                  controller: _inputTitleController,
                  onSubmitted: (_) => _submitData(),
                  decoration:
                      InputDecoration(labelText: 'What did you spend on'),
                ),
                TextField(
                  controller: _inputAmountController,
                  onSubmitted: (_) => _submitData(),
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(labelText: 'How much did you spend?'),
                ),
                Container(
                  height: 70,
                  child: Row(children: <Widget>[
                    Expanded(
                      child: Text(_selectedDate == null
                          ? 'No date chosen'
                          : DateFormat.yMd().format(_selectedDate)),
                    ),
                    FlatButton(
                        textColor: Theme.of(context).primaryColor,
                        child: Text('choose date'),
                        onPressed: _printDatePicker)
                  ]),
                ),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  child: Text('Add Expense'),
                  onPressed: _submitData,
                  textColor: Colors.white,
                ),
              ])),
    );
  }
}
