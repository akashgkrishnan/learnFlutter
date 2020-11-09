import 'package:flutter/material.dart';
import '../../../constants.dart';

class SingleItemCard extends StatelessWidget {
  final IconData icon;
  final String text;
  const SingleItemCard({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(this.icon,
                  size: 30, color: Theme.of(context).primaryColor),
              SizedBox(
                height: kDefaultPadding,
              ),
              Text(
                this.text,
                style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
