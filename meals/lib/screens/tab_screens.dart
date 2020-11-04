import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'favourites_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('meals'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.category,
              ),
              text: 'category',
            ),
            Tab(
              icon: Icon(
                Icons.star,
              ),
              text: 'favs',
            )
          ]),
        ),
        body: TabBarView(
          children: [
            CategoriesScreen(),
            FavouriteScreen(),
          ],
        ),
      ),
    );
  }
}
