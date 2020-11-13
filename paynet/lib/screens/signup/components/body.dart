import 'package:flutter/material.dart';
import '../../../widgets/main_background.dart';
import '../../../widgets/custom_date_picker.dart';

import '../../../constants.dart';
import '../../../widgets/rounded_button.dart';
import '../../../widgets/custom_text_field.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'signup',
            style: TextStyle(
                color: kSecondaryColor,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPadding * 2),
          CustomTextField(
            size: size,
            icon: Icons.person_add_alt,
            text: 'name',
            isPassword: false,
          ),
          CustomTextField(
            size: size,
            icon: Icons.mail_outline,
            text: 'email',
            isPassword: false,
          ),
          CustomTextField(
            size: size,
            icon: Icons.mobile_friendly_rounded,
            text: 'mobile',
            isPassword: false,
          ),
          CustomTextField(
            size: size,
            icon: Icons.lock_outlined,
            text: 'pin',
            isPassword: true,
          ),
          SizedBox(height: kDefaultPadding),
          CustomeDatePicker(),
          SizedBox(height: kDefaultPadding),
          RoundedButton(size: size, text: 'sign up'),
        ],
      ),
    );
  }
}
