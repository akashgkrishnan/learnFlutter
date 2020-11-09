import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../widgets/main_background.dart';
import '../../../constants.dart';
import './profile_card.dart';
import './single_item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackGround(
      child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Container(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  child: SvgPicture.asset('assets/icons/boy.svg'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Akash G Krishnan',
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 24.9,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  color: Theme.of(context).accentColor.withOpacity(0.3),
                  child: ProfileCard(),
                ),
                                SizedBox(
                  height: kDefaultPadding * 0.5,
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  color: Theme.of(context).accentColor.withOpacity(0.3),
                  child: SingleItemCard(
                    text: '4738729239283223',
                    icon: Icons.perm_identity_outlined,
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding * 0.5,
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  color: Theme.of(context).accentColor.withOpacity(0.3),
                  child: SingleItemCard(
                    text: 'krishnanag1996@gmail.com',
                    icon: Icons.email_outlined,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
