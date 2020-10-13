import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTxn;

  TransactionList(this.transactions, this.deleteTxn);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: this.transactions.isEmpty
          ? Column(children: <Widget>[
              Text('No Transactions'),
              Container(
                  height: 200,
                  child: Image.asset('assets/images/waiting.png',
                      fit: BoxFit.cover))
            ])
          : ListView.builder(
              itemBuilder: (cntxt, index) {
                return Card(
                  elevation: 20,
                  margin: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 10,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FittedBox(
                          child: Text('\$${transactions[index].amount}'),
                        ),
                      ),
                    ),
                    title: Text(
                      '${transactions[index].title}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      DateFormat.yMMMd().format(transactions[index].date),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: IconButton(
                        icon: Icon(Icons.delete),
                        color: Theme.of(context).errorColor,
                        onPressed: () => deleteTxn(transactions[index].id)),
                        
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
