import 'package:flutter/material.dart';
import 'package:onboard_screen/size_config.dart';
import 'package:flutter_svg/svg.dart';

class CustomSuffixIcon extends StatelessWidget {
  final String suffixIcon;
  const CustomSuffixIcon({
    Key key,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: getProportinateScreenWidth(20),
          horizontal: getProportinateScreenWidth(20)),
      child: SvgPicture.asset(
        this.suffixIcon,
        height: getProportinateScreenHeight(20),
      ),
    );
  }
}
