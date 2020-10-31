import 'package:flutter/material.dart';
import 'package:callerapp/constants.dart';
import 'components/body.dart';
import 'package:callerapp/size_config.dart';

class DialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Body(),
    );
  }
}
