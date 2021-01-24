import 'package:flutter/material.dart';
import './menu_item.dart';
import '../../../components/default_button.dart';
class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(45),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(.16),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            alignment: Alignment.topCenter,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'FOOD',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          MenuItem(
            title: 'HOME',
            press: () {},
          ),
          MenuItem(
            title: 'ABOUT',
            press: () {},
          ),
          MenuItem(
            title: 'PRICING',
            press: () {},
          ),
          MenuItem(
            title: 'CONTACT',
            press: () {},
          ),
          MenuItem(
            title: 'LOGIN',
            press: () {},
          ),
          DefaultButton(
            text: 'GET STARTED',
            press: () {},
          ),
        ],
      ),
    );
  }
}
