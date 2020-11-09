import 'package:flutter/material.dart';

import './screens/homescreen/home_screen.dart';
import 'constants.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paynet Wallet',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconTheme: IconThemeData(color: kPrimaryColor),
      ),
      // initialRoute: '/',
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
