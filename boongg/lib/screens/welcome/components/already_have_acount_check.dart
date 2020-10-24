import 'package:flutter/material.dart';
import 'package:boongg/constants.dart';

class AlreadyHaveAnAcountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAcountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login? 'don\'t have an acount?': 'already have an account',
          style: TextStyle(color: cPrimaryColor),
        ),
        GestureDetector(
          onTap: this.press,
          child: Text(
            login ? 'sign up' : 'sign in',
            style: TextStyle(color: cPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
