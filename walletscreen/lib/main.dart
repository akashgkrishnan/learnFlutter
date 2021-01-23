import 'package:flutter/material.dart';
import './widgets/widgets.dart';
import 'data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wallet app',
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
        fontFamily: 'Circular',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 120,
              child: WalletHeader(),
            ),
            Expanded(
              child: CardSection(),
            ),
            Expanded(
              child: ExpensePieChart(),
            )
          ],
        ),
      ),
    );
  }
}
