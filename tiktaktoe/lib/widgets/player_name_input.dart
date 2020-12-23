import 'package:flutter/material.dart';

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
        textInputAction: TextInputAction.next,
        controller: _playerNameController,
        style: TextStyle(color: Colors.red.withOpacity(0.7), fontSize: 18),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(2),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          labelText: 'player name',
          labelStyle: 
              TextStyle(color: Colors.teal.withOpacity(0.4), fontSize: 18),
        ),
        
        onSubmitted: (_) {
          this.press();
        },
      ),
    );
  }
}
