import 'package:flutter/material.dart';

import './screens/welcome/welcome_screen.dart';
import './screens/signin/sign_in_screen.dart';
import './screens/signup/sign_up_screen.dart';
import './screens/homescreen/home_screen.dart';
import 'constants.dart';

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
        accentColor: kSecondaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // initialRoute: '/',
      initialRoute: HomeScreen.routeName,
      routes: {

        '/': (context) => WelcomeScreen(),
         HomeScreen.routeName: (context) => HomeScreen(),
        SignInScreen.routeName: (context) => SignInScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
      },
    );
  }
}
