import 'package:flutter/material.dart';
import './grid_items.dart';
import '../../../widgets/main_background.dart';
import '../../acountinfo/acount_info_screen.dart';
import '../../balance/balance_screen.dart';
import '../../sendmoney/send_money_screen.dart';
import '../../history/history_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackGround(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 150,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Text(
            'hi akash',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
          ),
        ),
        Wrap(
          children: [
            GridItem(
              text: 'info',
              color: Color(0xFFcaf1de),
              splashColor: Color(0xFFe0cff0),
              icon: Icons.info,
              press: () {
                Navigator.of(context).pushNamed(AcountInfoScreen.routeName);
              },
            ),
            GridItem(
              text: 'balance',
              color: Color(0xFFe0cff0),
              splashColor: Color(0xFFcaf1de),
              icon: Icons.account_balance,
              press: () {
                Navigator.of(context).pushNamed(BalanceScreen.routeName);
              },
            ),
            GridItem(
              text: 'send',
              color: Color(0xFFe0cff0),
              splashColor: Color(0xFFcaf1de),
              icon: Icons.send,
              press: () {
                Navigator.of(context).pushNamed(SendMoneyScreen.routeName);
              },
            ),
            GridItem(
              text: 'history',
              color: Color(0xFFcaf1de),
              splashColor: Color(0xFFe0cff0),
              icon: Icons.history,
              press: () {
                Navigator.of(context).pushNamed(HistoryScreen.routeName);
              },
            ),
          ],
        ),
      ],
    ));
  }
}
