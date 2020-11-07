import 'package:flutter/material.dart';

import './screens/welcome/welcome_screen.dart';

import 'screens/signin/sign_in_screen.dart';
import 'screens/welcome/welcome_screen.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        SignInScreen.routeName: (context) => SignInScreen(),
      },
    );
  }
}
