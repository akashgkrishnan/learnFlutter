import 'package:flutter/material.dart';
import '../models/custom_grid_item.dart';
import '../models/player.dart';

class GameScreen extends StatefulWidget {
  static const routeName = '/game-screen';

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  bool _player1Move = true;
  final customeGridItems = List.generate(
    9,
    (index) => CustomGridItem(
      color: index % 2 == 0 ? Color(0xFF4E5CA9) : Color(0xFF404151),
      value: '',
      index: index + 1,
      isDone: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    final players =
        ModalRoute.of(context).settings.arguments as Map<String, Player>;
    final player1 = players['player1'];
    final player2 = players['player2'];
    

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
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: _player1Move ? 150 : 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: _player1Move ? Colors.green : Color(0xFFB15A55),
                  ),
                  child: Text(
                    player1.name,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: _player1Move ? Color(0xFFB15A55) : Colors.green,
                  ),
                  width: _player1Move ? 90 : 150,
                  child: Text(
                    player2.name,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        if (!customeGridItems[index].isDone) {
                          customeGridItems[index] = CustomGridItem(
                            value:
                                _player1Move ? player1.symbol : player2.symbol,
                            color: Colors.yellow,
                            index: index + 1,
                            isDone: true,
                          );
                          _player1Move = _player1Move ? false : true;
                        } else {
                          final snackbar = SnackBar(
                              content: Text(
                            'invalid move',
                            style: TextStyle(color: Colors.red),
                          ));
                          Scaffold.of(context).showSnackBar(snackbar);
                        }
                      });
                    },
                    child: customeGridItems[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
