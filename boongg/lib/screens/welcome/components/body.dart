import 'package:flutter/material.dart';
import 'background.dart';
import 'package:flutter_svg/svg.dart';
import 'rounded_input_field.dart';
import 'rounded_button.dart';
import 'package:boongg/constants.dart';
import 'already_have_acount_check.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'login',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        SvgPicture.asset(
          'assets/icons/login.svg',
          height: size.height * 0.25,
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        RoundedInputField(hintText: 'enter pin', onChanged: (value) {}),
        RoundedButton(
          text: 'login',
          press: () {},
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        AlreadyHaveAnAcountCheck(
          press: () {},
        )
      ],
    ));
  }
}
