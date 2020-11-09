import 'package:flutter/material.dart';
import 'components/body.dart';


class AcountInfoScreen extends StatelessWidget {
  static String routeName = '/acount-info';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
          title: Text('acount info'),),
      body: Body(),
    );
  }
}
