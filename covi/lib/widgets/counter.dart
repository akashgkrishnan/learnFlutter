import 'package:flutter/material.dart';
import '../constants.dart';



class Counter extends StatelessWidget {
  final String title;
  final Color color;
  final int number;
  const Counter({
    Key key,
    this.title,
    this.color,
    this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: this.color.withOpacity(.26),
            shape: BoxShape.circle,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: this.color,
                width: 2,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          number.toString(),
          style: TextStyle(
            fontSize: 40,
            color: this.color,
          ),
        ),
        Text(this.title, style: kSubTextStyle),
      ],
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 90);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
