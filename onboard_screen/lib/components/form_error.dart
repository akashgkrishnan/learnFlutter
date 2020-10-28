import 'package:flutter/material.dart';
import 'package:onboard_screen/size_config.dart';
import 'package:flutter_svg/svg.dart';

class FormErrors extends StatelessWidget {
  const FormErrors({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index]),),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportinateScreenHeight(14),
          width: getProportinateScreenWidth(14),
        ),
        SizedBox(
          height: getProportinateScreenHeight(20),
        ),
        Text(error),
      ],
    );
  }
}
