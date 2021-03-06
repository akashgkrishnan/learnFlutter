import 'package:flutter/material.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/tab_screens.dart';
import 'screens/filters_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'meals',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            canvasColor: Color.fromRGBO(255, 254, 229, 1),
            fontFamily: 'Raleway',
            textTheme: ThemeData.light().textTheme.copyWith(
                  bodyText2: TextStyle(
                    color: Colors.teal,
                  ),
                  headline6: TextStyle(
                    color: Colors.white,
                    fontFamily: 'RobotoCondensed',
                  ),
                )),
        // home: TabScreen(),
        initialRoute: '/',
        routes: {
          '/': (ctx) => TabScreen(),
          FilterScreen.routeName: (ctx) => FilterScreen(),
          CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
          MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        });
  }
}
