import 'package:flutter/material.dart';
import 'package:paynet/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  const RoundedButton({
    Key key,
    @required this.size,
    this.text,
    this.press,
  }) : super(key: key);

  final Size size;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.70,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(30)),
      child: FlatButton(
        onPressed: this.press,
        child: Text(
          this.text,
          style: TextStyle(
              letterSpacing: 1.2,
              fontSize: 21,
              color: kSecondaryColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
