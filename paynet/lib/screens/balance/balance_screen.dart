import 'package:flutter/material.dart';
import 'components/body.dart';

class BalanceScreen extends StatelessWidget {
  static String routeName = '/balance';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Body(),
    );
  }
}