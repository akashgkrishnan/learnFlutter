import 'package:flutter/material.dart';
import '../screens/acountinfo/acount_info_screen.dart';
import '../screens/balance/balance_screen.dart';
import '../screens/sendmoney/send_money_screen.dart';
import '../screens/history/history_screen.dart';
import '../constants.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 150,
            ),
            DrawerItem(
              color: Theme.of(context).accentColor,
              splashColor: Theme.of(context).primaryColor,
              text: 'info',
              icon: Icons.info,
              route: AcountInfoScreen.routeName,
            ),
            DrawerItem(
              color: Theme.of(context).primaryColor,
              splashColor: Theme.of(context).accentColor,
              text: 'balance',
              icon: Icons.account_balance,
              route: BalanceScreen.routeName,
            ),
            DrawerItem(
              color: Theme.of(context).accentColor,
              splashColor: Theme.of(context).primaryColor,
              text: 'send',
              icon: Icons.send,
              route: SendMoneyScreen.routeName,
            ),
            DrawerItem(
              color: Theme.of(context).primaryColor,
              splashColor: Theme.of(context).accentColor,
              text: 'history',
              icon: Icons.history,
              route: HistoryScreen.routeName,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String route, text;
  final Color splashColor, color;
  final IconData icon;
  const DrawerItem({
    Key key,
    this.route,
    this.text,
    this.splashColor,
    this.color,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
      child: Container(
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(this.route);
          },
          splashColor: this.color,
          child: Center(
            child: Row(
              children: [
                Icon(
                  this.icon,
                  color: this.color,
                ),
                SizedBox(
                  width: kDefaultPadding,
                ),
                Text(
                  this.text,
                  style: TextStyle(
                    fontSize: 28,
                    color: this.splashColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
