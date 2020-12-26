import 'package:flutter/material.dart';
import 'utils.dart';

class OptionsSideBar extends StatelessWidget {
  OptionsSideBar({
    Key key,
  }) : super(key: key);

  final List<Widget> _options = List.generate(13, (_) {
    var color = returnRandomColor();
    return Draggable<Widget>(
      data: Container(
        height: 40,
        color: color,
      ),
      feedback: Container(
        height: 40,
        width: 40,
        color: color,
      ),
      child: Container(
        height: 40,
        color: color,
      ),
    );
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: _options
      ),
    );
  }
}
