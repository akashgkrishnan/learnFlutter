import 'package:flutter/material.dart';
import 'components/body.dart';

class SendMoneyScreen extends StatelessWidget {
  static String routeName = '/sendmoney';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Body(),
    );
  }
}