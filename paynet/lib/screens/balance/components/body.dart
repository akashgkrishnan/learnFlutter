import 'package:flutter/material.dart';
import '../../../widgets/main_background.dart';
import 'balance_card.dart';

class Body extends StatelessWidget {
  final double balance = 10000;
  @override
  Widget build(BuildContext context) {
    return BackGround(
      child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          balance == 0
              ? BalanceCard(
                  text: 'You have no money in \n       your account',
                  buttonText: 'add money',
                  imageString: 'assets/images/pocket.png',
                  balance: balance,
                )
              : BalanceCard(
                  text: 'Your acount balance is ',
                  buttonText: 'add money',
                  imageString: 'assets/images/wallet2.png',
                  balance: balance,
                ),
        ],
      ),
    );
  }
}
