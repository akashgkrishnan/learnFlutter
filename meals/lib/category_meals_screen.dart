import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals.dart';
  // final String id;
  // final String title;

  // CategoryMealsScreen(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String id = routeArgs['id'];
    final String title = routeArgs['title'];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(title)),
      ),
      body: ListView.builder(itemBuilder : (ctx, index) {

      },
      itemCount: 10),
    );
  }
}
