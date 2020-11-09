import 'package:flutter/material.dart';
import '../../../widgets/main_background.dart';
import '../../../constants.dart';
import './user_bank_Card.dart';
import 'package:intl/intl.dart';

class Body extends StatelessWidget {
  List<Map<String, Object>> transactions = [
    {'sendTo': 'akash', 'amount': 122.3, 'on': DateTime.now()},
    {'sendTo': 'christy', 'amount': 11.3, 'on': DateTime.now()},
    {'sendTo': 'akhila', 'amount': 12222.3, 'on': DateTime.now()},
    {'sendTo': 'mom', 'amount': 1220.23, 'on': DateTime.now()},
    {'sendTo': 'dad', 'amount': 56.3, 'on': DateTime.now()},
    {'sendTo': 'chat juice center', 'amount': 10.3, 'on': DateTime.now()},
  ];
  @override
  Widget build(BuildContext context) {
    return BackGround(
        child: Column(
      children: [
        SizedBox(
          height: 180,
        ),
        UserBankCard(),
        SizedBox(
          height: kDefaultPadding,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
        ),
        Text(
          'recent transactions',
          style: TextStyle(color: Colors.black38, fontSize: 20),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Theme.of(context).accentColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          DateFormat.d().format(transactions[index]['on']),
                        ),
                        Text(
                          DateFormat.MMM().format(transactions[index]['on']),
                        ),
                      ],
                    ),
                  ),
                ),
                title: Text(transactions[index]['sendTo']),
                subtitle: Text(transactions[index]['amount'].toString()),
              );
            },
            itemCount: transactions.length,
          ),
        )
      ],
    ));
  }
}
