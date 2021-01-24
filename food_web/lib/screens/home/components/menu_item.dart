import 'package:flutter/material.dart';
import '../../../constants.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final Function press;

  const MenuItem({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          this.title,
          style: TextStyle(
              color: textColor.withOpacity(0.4), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
