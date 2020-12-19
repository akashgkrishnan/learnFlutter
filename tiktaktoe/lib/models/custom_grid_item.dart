import 'package:flutter/material.dart';

class CustomGridItem extends StatefulWidget {
  final String value;
  final Color color;
  final int index;
  final bool isDone;

  CustomGridItem({this.value, this.color, this.index, this.isDone});
  @override
  _CustomGridItemState createState() => _CustomGridItemState();
}

class _CustomGridItemState extends State<CustomGridItem> {
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      child: Center(
        child: Text(
          widget.value,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
    );
  }
}
