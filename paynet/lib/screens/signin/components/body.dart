import 'package:flutter/material.dart';
import '../../../widgets/main_background.dart';

import '../../../constants.dart';
import '../../../widgets/rounded_button.dart';
import '../../../widgets/custom_text_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'login',
            style: TextStyle(
                color: kSecondaryColor,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPadding * 2),
          CustomTextField(
            size: size,
            icon: Icons.verified_user,
            text: 'mobile',
            isPassword: false,
          ),
          CustomTextField(
            size: size,
            icon: Icons.lock,
            text: 'pin',
            isPassword: true,
          ),
          SizedBox(height: kDefaultPadding),
          RoundedButton(size: size, text: 'login'),
        ],
      ),
    );
  }
}
