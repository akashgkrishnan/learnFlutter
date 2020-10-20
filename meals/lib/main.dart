import 'package:flutter/material.dart';
import './categories_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'meals',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        canvasColor: Color.fromRGBO(255,254,229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Colors.teal,
          ),
          title:TextStyle(
            color: Colors.white,
            fontFamily:'RobotoCondensed',
          ),
        )
      ),
      home: CategoriesScreen(),
    );
  }
}
