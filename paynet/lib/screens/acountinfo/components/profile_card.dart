import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../constants.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(children: [
            Icon(
              Icons.mobile_friendly,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Text(
              '8130233807',
              style: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w300,
              ),
            )
          ]),
          Column(children: [
            Icon(
              Icons.calendar_today_outlined,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Text(
              DateFormat.yMMMd().format(DateTime.now()),
              style: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w300,
              ),
            )
          ]),
        ],
      ),
    );
  }
}
