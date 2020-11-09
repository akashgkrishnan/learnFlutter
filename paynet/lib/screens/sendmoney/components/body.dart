import 'package:flutter/material.dart';

import '../../../widgets/main_background.dart';
import '../../../widgets/custom_text_field.dart';
import '../../../constants.dart';
import '../../../widgets/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 180,
          ),
          Image.asset('assets/images/wallet.png',height: 100,),
          SizedBox(
            height: kDefaultPadding,
          ),
          CustomTextField(
            size: size,
            isPassword: false,
            icon: Icons.verified_user_outlined,
            text: 'acount no',
          ),
          CustomTextField(
            size: size,
            isPassword: false,
            icon: Icons.money,
            text: 'amount',
          ),
          CustomTextField(
            size: size,
            isPassword: false,
            icon: Icons.perm_identity_outlined,
            text: 'name',
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          RoundedButton(
            size: size,
            text: 'send money',
            press: () {},
          )
        ],
      ),
    );
  }
}
