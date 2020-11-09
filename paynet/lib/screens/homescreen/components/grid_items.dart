import 'package:flutter/material.dart';
import '../../../constants.dart';

class GridItem extends StatelessWidget {
  final String text;
  final Color color;
  final Color splashColor;
  final Function press;
  final IconData icon;

  const GridItem({
    Key key,
    @required this.text,
    this.color,
    this.press,
    this.icon, this.splashColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.press,
      splashColor: this.splashColor,
      child: Container(
          height: 150,
          width: 150,
          margin: EdgeInsets.all(kDefaultPadding),
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Text(
                this.text,
                style: TextStyle(color: Colors.black54),
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              Icon(
                this.icon,
                color: this.splashColor,
              )
            ],
          ),
          decoration: BoxDecoration(
            border: Border.all(color: this.color, width: 3.0),
            borderRadius: BorderRadius.circular(15),
          )),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
