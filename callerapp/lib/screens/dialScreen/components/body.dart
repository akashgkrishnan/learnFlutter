import 'package:flutter/material.dart';
import 'package:callerapp/size_config.dart';
import '../../../components/dial_user_pic.dart';
import 'package:flutter_svg/svg.dart';
import 'dial_button.dart';
import '../../../components/rounded_button.dart';
import 'package:callerapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Christy',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white),
            ),
            Text(
              'calling....',
              style: TextStyle(color: Colors.white60),
            ),
            VerticalSpacing(),
            DialUserPic(
              image: 'assets/images/calling_face.png',
            ),
            Spacer(),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                DialButton(
                  iconSrc: 'assets/icons/Icon Mic.svg',
                  text: 'audio',
                  press: () {},
                ),
                DialButton(
                  iconSrc: 'assets/icons/Icon Volume.svg',
                  text: 'speaker',
                  press: () {},
                ),
                DialButton(
                  iconSrc: 'assets/icons/Icon Video.svg',
                  text: 'video',
                  press: () {},
                ),
                DialButton(
                  iconSrc: 'assets/icons/Icon Message.svg',
                  text: 'message',
                  press: () {},
                ),
                DialButton(
                  iconSrc: 'assets/icons/Icon User.svg',
                  text: 'add contact',
                  press: () {},
                ),
                DialButton(
                  iconSrc: 'assets/icons/Icon Voicemail.svg',
                  text: 'voice mail',
                  press: () {},
                ),
              ],
            ),
            VerticalSpacing(
              of: 15,
            ),
            RoundedButton(
              press: () {},
              color: kRedColor,
              iconColor: Colors.white,
              iconSrc: 'assets/icons/call_end.svg',
            ),
          ],
        ),
      ),
    );
  }
}
