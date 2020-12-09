import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/screens.dart';
import './data/covid_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CovidProvider(),
      child: MaterialApp(
        title: 'covid',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BottomNavScreen(),
      ),
    );
  }
}
