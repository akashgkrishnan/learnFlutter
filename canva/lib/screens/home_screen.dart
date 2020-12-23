import 'package:flutter/material.dart';
import '../widgets/custom_rounded_button.dart';
import 'canvas.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'C A N V A',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 65,
              ),
            ),
            CustomRoundedButton(
              press: () {
                Navigator.of(context).pushNamed(CanvaScreen.routeName);
              },
              text: 'new canvas',
            ),
            CustomRoundedButton(
              press: () {},
              text: 'previous work',
            )
          ],
        ),
      ),
    );
  }
}
