import 'package:flutter/material.dart';

import 'screens/groupCall/group_call_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "SF UI",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GroupCallScreen(),

    );
  }
}
