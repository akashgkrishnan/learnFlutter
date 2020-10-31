import 'package:flutter/material.dart';
import 'components/body.dart';
import 'package:callerapp/size_config.dart';

class AudioCallWithImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
