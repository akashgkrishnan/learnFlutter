import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Widget child;

  const BackGround({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/images/main_top.png'),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset('assets/images/login_bottom.png'),
          ),
          child,
        ],
      ),
    );
  }
}
