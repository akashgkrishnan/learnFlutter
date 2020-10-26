import 'package:flutter/material.dart';
import 'package:onboard_screen/constants.dart';
import 'package:onboard_screen/size_config.dart';

class DefaulButton extends StatelessWidget {
  final String text;
  final Function press;
  const DefaulButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportinateScreenHeight(56),
      width: double.infinity,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: kPrimaryColor,
        onPressed: this.press,
        child: Text(
          this.text,
          style: TextStyle(
            fontSize: getProportinateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
