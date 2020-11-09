import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class UserBankCard extends StatelessWidget {
  const UserBankCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 40,
        child: SvgPicture.asset(
          'assets/icons/mastercard.svg',
          fit: BoxFit.contain,
        ),
      ),
      title: Text(
        'icici bank',
        style: TextStyle(color: Colors.black45, fontSize: 18),
      ),
      subtitle: Text(
        'XXXX 2009',
        style: TextStyle(color: Colors.black38, fontSize: 12),
      ),
    );
  }
}
