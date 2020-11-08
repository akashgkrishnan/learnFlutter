import 'package:flutter/material.dart';
import '../../../widgets/main_background.dart';

import '../../../constants.dart';
import '../../../widgets/rounded_button.dart';

import '../../signin/sign_in_screen.dart';
import '../../signup/sign_up_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'welcome',
            style: TextStyle(
                color: kSecondaryColor,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPadding * 2),
          RoundedButton(
            size: size,
            text: 'login',
            press: () {
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
          ),
          SizedBox(height: kDefaultPadding),
          RoundedButton(
            size: size,
            text: 'sign up',
            press: () {
              Navigator.pushNamed(context, SignUpScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
