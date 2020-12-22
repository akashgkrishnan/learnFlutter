import 'package:flutter/material.dart';
import './custom_rounded_button.dart';
import '../screens/home_page.dart';

class DrawWidgetFail extends StatelessWidget {
  const DrawWidgetFail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'it is a draw',
          softWrap: true,
          style: TextStyle(
            color: Colors.white,
            fontSize: 42,
          ),
        ),
        CustomRoundedButton(
          press: () {
            Navigator.of(context).pushReplacementNamed(HomePage.routeName);
          },
          text: 'back to home',
        ),
      ],
    );
  }
}
