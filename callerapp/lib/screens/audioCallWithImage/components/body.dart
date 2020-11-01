import 'package:flutter/material.dart';
import 'package:callerapp/size_config.dart';
import 'package:flutter_svg/svg.dart';
import 'package:callerapp/constants.dart';
import 'package:callerapp/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/full_image.png',
          fit: BoxFit.cover,
        ),
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
        ),
        Padding(
          padding: const EdgeInsets.all(21.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Akash\nKrishnan',
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(color: Colors.white),
                ),
                VerticalSpacing(of: 10),
                Text(
                  'Incoming 00:01',
                  style: TextStyle(color: Colors.white60),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RoundedButton(
                      press: () {},
                      color: Colors.white,
                      iconColor: Colors.black,
                      iconSrc: 'assets/icons/Icon Mic.svg',
                    ),
                    RoundedButton(
                      press: () {},
                      color: kRedColor,
                      iconColor: Colors.white,
                      iconSrc: 'assets/icons/call_end.svg',
                    ),
                    RoundedButton(
                      press: () {},
                      color: Colors.white,
                      iconColor: Colors.black,
                      iconSrc: 'assets/icons/Icon Volume.svg',
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

