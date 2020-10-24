import 'package:flutter/material.dart';
import 'text_field_container.dart';
import 'package:boongg/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField(
      {Key key, this.hintText, this.icon = Icons.lock, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            icon: Icon(
              this.icon,
              color: cPrimaryColor,
            ),
            hintText: this.hintText,
            border: InputBorder.none,
            suffixIcon: Icon(
              Icons.visibility,
              color: cPrimaryColor,
            )),
      ),
    );
  }
}
