import 'package:flutter/material.dart';
import 'package:shopping/constants.dart';


class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildCounterButton(
            icon: Icons.remove,
            press: () {
              setState(() {
                if (this.numOfItems >= 1) {
                  this.numOfItems--;
                }
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            this.numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildCounterButton(
            icon: Icons.add,
            press: () {
              setState(() {
                this.numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildCounterButton({IconData icon, Function press}) {
    return SizedBox(
      width: 35,
      height: 35,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: Icon(icon),
        onPressed: press,
      ),
    );
  }
}
