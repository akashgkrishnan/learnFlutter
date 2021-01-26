import 'package:flutter/material.dart';
import 'constants.dart';
import './widgets/my_header.dart';
import './widgets/symtom_Card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyHeader(
              image: 'assets/icons/coronadr.svg',
              textTop: 'Get to know',
              textBottom: 'About Covid-19',
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Symptoms',
                    style: kTitleTextstyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SymtomCard(
                        image: 'assets/images/headache.png',
                        title: 'Headache',
                      ),
                      SymtomCard(
                        image: 'assets/images/caugh.png',
                        title: 'Caugh',
                      ),
                      SymtomCard(
                        image: 'assets/images/fever.png',
                        title: 'Fever',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Prevention',
                    style: kTitleTextstyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PreventCard(
                    image: 'assets/images/wear_mask.png',
                    title: 'Wear a face mask',
                    text:
                        'Since the start of coronavirus some places have embraced the face maask fully',
                  ),
                  SizedBox(height: 20,),
                  PreventCard(
                    image: 'assets/images/wash_hands.png',
                    title: 'Wash your hands',
                    text:
                        'Since the start of coronavirus some places have embraced the face maask fully',
                  ),
                  SizedBox(height: 50,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PreventCard extends StatelessWidget {
  final String title;
  final String image;
  final String text;
  const PreventCard({
    Key key,
    this.title,
    this.image,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 136,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 8),
                  blurRadius: 24,
                  color: kShadowColor,
                ),
              ],
            ),
          ),
          Image.asset(
            this.image,
          ),
          Positioned(
            left: 130,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              height: 136,
              width: MediaQuery.of(context).size.width - 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.title,
                    style: kTitleTextstyle.copyWith(fontSize: 16),
                  ),
                  Text(
                    this.text,
                    style: TextStyle(fontSize: 12),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: SvgPicture.asset('assets/icons/forward.svg'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
