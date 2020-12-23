import 'package:flutter/material.dart';
import '../models/player.dart';
import 'game_screen.dart';
import '../widgets/custom_rounded_button.dart';
import 'home_page.dart';

class WinnerScreen extends StatelessWidget {
  static const routeName = 'winner-screen';

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context).settings.arguments as Map<String, Player>;
    Player winner = data['winner'];
    Player player1 = data['player1'];
    Player player2 = data['player2'];

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
                Navigator.of(context).pushReplacementNamed(GameScreen.routeName,
                    arguments: {'player1': player1, 'player2': player2});
              },
              text: 'replay',
            ),
            CustomRoundedButton(
              press: () {
                Navigator.of(context).pushReplacementNamed(HomePage.routeName);
              },
              text: 'back to home',
            ),
          ],
        ),
      ),
    );
  }
}
