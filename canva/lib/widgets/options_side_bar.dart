import 'package:flutter/material.dart';

class OptionsSideBar extends StatelessWidget {
  const OptionsSideBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Container(
            height: 40,
            color: Colors.red,
          ),
          Container(
            height: 40,
            color: Colors.red,
          ),
          Container(
            height: 40,
            color: Colors.yellow,
          ),
          Container(
            height: 40,
            color: Colors.blue,
          ),
          Draggable(
            data: Container(
              height: 40,
              color: Colors.red,
            ),
            feedback: Container(
              child: Text('a'),
            ),
            child: Container(
              height: 40,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
