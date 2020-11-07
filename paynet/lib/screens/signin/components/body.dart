import 'package:flutter/material.dart';
import '../../../widgets/main_background.dart';

import '../../../constants.dart';
import '../../../widgets/rounded_button.dart';

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

class CustomTextField extends StatelessWidget {
  final bool isPassword;
  final String text;
  final IconData icon;
  const CustomTextField({
    Key key,
    @required this.size,
    this.icon,
    this.text,
    this.isPassword,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.7,
      child: TextField(
        obscureText: this.isPassword,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
