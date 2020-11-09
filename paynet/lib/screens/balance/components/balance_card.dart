import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../widgets/rounded_button.dart';

class BalanceCard extends StatelessWidget {
  final String imageString, text, buttonText;
  final double balance;
  final Function press;
  const BalanceCard({
    Key key,
    this.imageString,
    this.text,
    this.buttonText,
    this.press,
    this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(this.imageString),
        SizedBox(
          height: kDefaultPadding,
        ),
        balance != 0
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    this.text,
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/rs.svg'),
                      SizedBox(
                        width: kDefaultPadding * 0.5,
                      ),
                      Text(
                        this.balance.toString(),
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontSize: 28),
                      )
                    ],
                  )
                ],
              )
            : Text(
                this.text,
                style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
        SizedBox(
          height: kDefaultPadding,
        ),
        RoundedButton(
          size: size,
          press: () {},
          text: this.buttonText,
        )
      ],
    );
  }
}
