import 'package:flutter/material.dart';
import '../constants.dart';


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
