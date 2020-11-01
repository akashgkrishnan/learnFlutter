import 'package:flutter/material.dart';
import 'package:callerapp/size_config.dart';
import 'package:flutter_svg/svg.dart';

class RoundedButton extends StatelessWidget {
  final double size;
  final String iconSrc;
  final Color color, iconColor;
  final VoidCallback press;
  const RoundedButton({
    Key key,
    this.size = 64,
    @required this.iconSrc,
    @required this.color,
    @required this.iconColor,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportinateScreenHeight(this.size),
      width: getProportinateScreenWidth(this.size),
      child: FlatButton(
        padding: EdgeInsets.all(15 / 64 * size),
        color: this.color,
        onPressed: this.press,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: SvgPicture.asset(
          this.iconSrc,
          color: this.iconColor,
        ),
      ),
    );
  }
}
