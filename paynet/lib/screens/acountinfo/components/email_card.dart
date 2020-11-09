import 'package:flutter/material.dart';
import '../../../constants.dart';

class EmailCard extends StatelessWidget {
  const EmailCard({
    Key key,
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
              Icon(Icons.email_outlined,
                  size: 30,
                  color: Theme.of(context).primaryColor),
              SizedBox(
                height: kDefaultPadding,
              ),
              Text(
                'krishnanag19996@gmail.com',
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
