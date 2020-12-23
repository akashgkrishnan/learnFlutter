import 'package:flutter/material.dart';
import '../models/player.dart';
import '../widgets/custom_rounded_button.dart';
import '../widgets/player_title.dart';
import '../widgets/player_name_input.dart';
import './game_screen.dart';

class PlayerInfo extends StatefulWidget {
  static const routeName = '/player-info';

  @override
  _PlayerInfoState createState() => _PlayerInfoState();
}

class _PlayerInfoState extends State<PlayerInfo> {
  final _player1NameController = TextEditingController();
  final _player2NameController = TextEditingController();

  void _submitData() {
    final p1Name = _player1NameController.text;
    final p2Name = _player2NameController.text;

    if (p1Name.isEmpty || p2Name.isEmpty) {
      return null;
    }
    final p1 = Player(name: p1Name, symbol: 'X');
    final p2 = Player(name: p2Name, symbol: 'O');

    Navigator.of(context).pushReplacementNamed(GameScreen.routeName,
        arguments: {'player1': p1, 'player2': p2});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/tik_tak.png'),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  const PlayerTitle(
                    text: 'player 1',
                  ),
                  PlayerNameInput(
                    playerNameController: _player1NameController,
                    press: _submitData,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const PlayerTitle(
                    text: 'player 2',
                  ),
                  PlayerNameInput(
                    playerNameController: _player2NameController,
                    press: _submitData,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              CustomRoundedButton(
                press: () {
                  _submitData();
                },
                text: 'go',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
