import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/canvas.dart';
import 'package:provider/provider.dart';
import './providers/shape_providers.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CanvasItems(),
      child: MaterialApp(
        title: 'canva',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.black,
            accentColor: Colors.teal,
            scaffoldBackgroundColor: Colors.black),
        home: HomeScreen(),
        routes: {
          HomeScreen.routeName: (ctx) => HomeScreen(),
          CanvaScreen.routeName: (ctx) => CanvaScreen()
        },
      ),
    );
  }
}
