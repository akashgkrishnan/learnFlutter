import 'package:flutter/material.dart';
import 'components/body.dart';
import 'package:callerapp/size_config.dart';
import 'package:callerapp/constants.dart';
import '../../components/rounded_button.dart';
import 'package:flutter_svg/svg.dart';

class GroupCallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/Icon Back.svg'),
        onPressed: () {},
      ),
      actions: [
        IconButton(
        icon: SvgPicture.asset('assets/icons/Icon User.svg'),
        onPressed: () {},
      ),
      ],
    );
  }

  Container buildBottomNavBar() {
    return Container(
      color: kBackgroundColor,
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            RoundedButton(
                iconSrc: 'assets/icons/Icon Close.svg',
                color: kRedColor,
                iconColor: Colors.white,
                press: () {}),
            Spacer(),
            RoundedButton(
                iconSrc: 'assets/icons/Icon Volume.svg',
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                press: () {}),
            Spacer(),
            RoundedButton(
                iconSrc: 'assets/icons/Icon Mic.svg',
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                press: () {}),
            Spacer(),
            RoundedButton(
                iconSrc: 'assets/icons/Icon Repeat.svg',
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                press: () {}),
            Spacer(),
            RoundedButton(
                iconSrc: 'assets/icons/Icon Video.svg',
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                press: () {}),
          ],
        ),
      )),
    );
  }
}
