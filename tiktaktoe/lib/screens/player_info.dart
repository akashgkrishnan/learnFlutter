import 'package:flutter/material.dart';
import '../models/player.dart';
import '../widgets/custom_rounded_button.dart';
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
    print(p1.name);
    print(p2.name);
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

class PlayerNameInput extends StatelessWidget {
  const PlayerNameInput({
    Key key,
    @required playerNameController,
    this.press,
  })  : _playerNameController = playerNameController,
        super(key: key);

  final TextEditingController _playerNameController;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(18.0),
      decoration: BoxDecoration(
        color: Color(0xFF404151),
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        controller: _playerNameController,
        decoration: InputDecoration(
          labelText: 'name',
          labelStyle: TextStyle(color: Colors.white, fontSize: 18),
        ),
        onSubmitted: (_) {
          this.press();
        },
      ),
    );
  }
}

class PlayerTitle extends StatelessWidget {
  final String text;

  const PlayerTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Text(
        this.text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }
}
