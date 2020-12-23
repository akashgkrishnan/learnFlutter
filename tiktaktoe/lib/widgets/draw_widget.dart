import 'package:flutter/material.dart';
import './custom_rounded_button.dart';
import '../screens/home_page.dart';
import '../screens/game_screen.dart';
import '../models/player.dart';

class DrawWidgetFail extends StatelessWidget {
  const DrawWidgetFail({
    Key key,
    this.player1,
    this.player2,
  }) : super(key: key);
  final Player player1;
  final Player player2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'it is a draw',
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
          text: 'Replay',
        ),
      ],
    );
  }
}
