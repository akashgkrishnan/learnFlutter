import 'package:flutter/material.dart';
import './player_info.dart';
import '../widgets/custom_rounded_button.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/tik_tak.png'),
            CustomRoundedButton(
              press: () {
                Navigator.of(context)
                    .pushReplacementNamed(PlayerInfo.routeName);
              },
              text: 'start',
            ),
          ],
        ),
      ),
    );
  }
}
