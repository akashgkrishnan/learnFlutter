import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../widgets/rounded_button.dart';

class NoBalance extends StatelessWidget {
  const NoBalance({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset('assets/images/pocket.png'),
        SizedBox(
          height: kDefaultPadding,
        ),
        Text(
          'You have no money in \n       your account',
          style: TextStyle(
              color: Colors.black45, fontWeight: FontWeight.w400, fontSize: 20),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        RoundedButton(
          size: size,
          press: () {},
          text: 'add money',
        )
      ],
    );
  }
}
