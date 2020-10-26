import 'package:flutter/material.dart';
import 'package:onboard_screen/size_config.dart';

import 'package:onboard_screen/constants.dart';


class SplashContent extends StatelessWidget {
  final String text, image;
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'AKASH',
          style: TextStyle(
            fontSize: getProportinateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          this.text,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          this.image,
          height: getProportinateScreenHeight(265),
          width: getProportinateScreenWidth(235),
        ),
      ],
    );
  }
}
