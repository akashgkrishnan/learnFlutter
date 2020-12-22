import 'package:flutter/material.dart';
import '../widgets/custom_rounded_button.dart';
import 'home_page.dart';

class WinnerScreen extends StatelessWidget {
  static const routeName = 'winner-screen';

  @override
  Widget build(BuildContext context) {
    var winner = ModalRoute.of(context).settings.arguments;

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
            Text(
              '$winner has won',
              softWrap: true,
              style: TextStyle(
                color: Colors.white,
                fontSize: 42,
                
              ),
            ),
            CustomRoundedButton(
              press: () {
                Navigator.of(context)
                    .pushReplacementNamed(HomePage.routeName);
              },
              text: 'back to home',
            ),
          ],
        ),
      ),
    );
  }
}
