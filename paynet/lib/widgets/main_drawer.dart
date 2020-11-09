import 'package:flutter/material.dart';
import '../screens/acountinfo/acount_info_screen.dart';
import '../screens/balance/balance_screen.dart';
import '../screens/sendmoney/send_money_screen.dart';
import '../screens/history/history_screen.dart';

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
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              child: Container(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(AcountInfoScreen.routeName);
                  },
                  splashColor: Theme.of(context).primaryColor,
                  child: Center(
                    child: Text(
                      'info',
                      style: TextStyle(
                        fontSize: 28,
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              child: Container(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(BalanceScreen.routeName);
                  },
                  splashColor: Theme.of(context).accentColor,
                  child: Center(
                    child: Text(
                      'balance',
                      style: TextStyle(
                        fontSize: 28,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              child: Container(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(SendMoneyScreen.routeName);
                  },
                  splashColor: Theme.of(context).primaryColor,
                  child: Center(
                    child: Text(
                      'send',
                      style: TextStyle(
                        fontSize: 28,
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              child: Container(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(HistoryScreen.routeName);
                  },
                  splashColor: Theme.of(context).accentColor,
                  child: Center(
                    child: Text(
                      'history',
                      style: TextStyle(
                        fontSize: 28,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
