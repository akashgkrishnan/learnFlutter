import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'cooking up',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Theme.of(context).primaryColor),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildListTile(
                title: 'meals',
                icon: Icons.restaurant,
                tapHandler: () {
                  Navigator.of(context).pushReplacementNamed('/');
                }),
            SizedBox(
              height: 20,
            ),
            buildListTile(
                title: 'settings', icon: Icons.settings, tapHandler: () {
                  Navigator.of(context).pushReplacementNamed('/filters');
                }),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile({String title, IconData icon, Function tapHandler}) {
    return ListTile(
      onTap: tapHandler,
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
