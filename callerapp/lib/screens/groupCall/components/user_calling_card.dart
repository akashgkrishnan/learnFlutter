import 'package:flutter/material.dart';
import 'package:callerapp/constants.dart';
import 'package:callerapp/size_config.dart';
import 'package:callerapp/components/dial_user_pic.dart';

class UserCallingCard extends StatelessWidget {
  final String name, image;
  const UserCallingCard({
    Key key,
    @required this.name,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DialUserPic(
            image: this.image,
            size: 210,
          ),
          VerticalSpacing(
            of: 10,
          ),
          Text(
            this.name,
            style: TextStyle(
              fontSize: 21,
              color: Colors.white,
            ),
          ),
          VerticalSpacing(
            of: 5,
          ),
          Text(
            'calling...',
            style: TextStyle(color: Colors.white60),
          )
        ],
      ),
    );
  }
}
