import 'package:flutter/material.dart';
import 'package:callerapp/size_config.dart';
import 'package:flutter_svg/svg.dart';


class DialButton extends StatelessWidget {
  final String iconSrc, text;
  final VoidCallback press;

  const DialButton({
    Key key,
    @required this.iconSrc,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportinateScreenWidth(120),
      child: FlatButton(
        padding: EdgeInsets.symmetric(
          vertical: getProportinateScreenHeight(20),
        ),
        onPressed: this.press,
        child: Column(
          children: [
            SvgPicture.asset(
              this.iconSrc,
              color: Colors.white,
              height: 36,
            ),
            VerticalSpacing(of: 5),
            Text(
              this.text,
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
