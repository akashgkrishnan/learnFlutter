import 'package:flutter/material.dart';
import 'package:callerapp/size_config.dart';
import '../../../components/dial_user_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            'Christy',
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white),
          ),
          Text(
            'calling....',
            style: TextStyle(color: Colors.white60),
          ),
          VerticalSpacing(),
          DialUserPic(
            image: 'assets/images/calling_face.png',
          ),
          Spacer(),
          
        ],
      ),
    );
  }
}
