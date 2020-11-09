import 'package:flutter/material.dart';
import 'components/body.dart';

class HistoryScreen extends StatelessWidget {
  static String routeName = '/history';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('history'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Body(),
    );
  }
}