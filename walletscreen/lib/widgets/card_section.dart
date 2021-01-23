import 'package:flutter/material.dart';
import '../data.dart';
import './card_detail.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            'Selected Card',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                width: size.width,
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 40,
                ),
                decoration: BoxDecoration(
                  boxShadow: customShadow,
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: 150,
                      bottom: -200,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: customShadow,
                          shape: BoxShape.circle,
                          color: Colors.white38,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      left: -300,
                      top: -100,
                      bottom: -100,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: customShadow,
                          shape: BoxShape.circle,
                          color: Colors.white38,
                        ),
                      ),
                    ),
                    CardDetails(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
