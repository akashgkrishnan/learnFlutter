import 'package:flutter/material.dart';
import 'package:onboard_screen/size_config.dart';
import 'package:onboard_screen/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onboard_screen/components/custome_suffix_icon.dart';
import 'package:onboard_screen/components/default_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportinateScreenWidth(20)),
          child: Column(
            children: [
              Text(
                'welcome back',
                style: TextStyle(
                  fontSize: getProportinateScreenHeight(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'sign in with email or password \nor login with social media',
                textAlign: TextAlign.center,
              ),
              SignInForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  @override
  State createState() {
    return _SignInFormState();
  }
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportinateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportinateScreenHeight(20),
          ),
          DefaulButton(
            text: 'continue',
            press: () {},
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'password',
        hintText: 'enter password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          suffixIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'email',
        hintText: 'enter email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          suffixIcon: 'assets/icons/Mail.svg',
        ),
      ),
    );
  }
}
