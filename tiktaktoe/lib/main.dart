import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/player_info.dart';
import 'screens/game_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF010203),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: {
        HomePage.routeName: (ctx) => HomePage(),
        PlayerInfo.routeName: (ctx) => PlayerInfo(),
        GameScreen.routeName: (ctx) => GameScreen(),
      },
    );
  }
}
