import './widgets/counter.dart';
import './widgets/my_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyHeader(
            image: 'assets/icons/Drcorona.svg',
            textTop: 'All you need is to',
            textBottom: 'stay at home',
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Color(
                  0xFFE5E5E5,
                ),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/maps-and-flags.svg',
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: DropdownButton(
                    value: "India",
                    isExpanded: true,
                    icon: SvgPicture.asset('assets/icons/dropdown.svg'),
                    underline: SizedBox(),
                    items: ['India', 'USA', 'UK', 'Canada']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Cases update\n',
                            style: kTitleTextstyle,
                          ),
                          const TextSpan(
                            text: 'New updates from today',
                            style: TextStyle(
                              color: kTextLightColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'see details',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 30,
                        color: kShadowColor,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Counter(
                        title: 'Infected',
                        number: 1046,
                        color: kInfectedColor,
                      ),
                      Counter(
                        title: 'Death',
                        number: 190,
                        color: kDeathColor,
                      ),
                      Counter(
                        title: 'Recovered',
                        number: 1046,
                        color: kRecovercolor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'spread of virus',
                      style: kTitleTextstyle,
                    ),
                    Text(
                      'see detiails',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 178,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 30,
                        color: kShadowColor,
                      ),
                    ],
                  ),
                  child: Image.asset("assets/images/map.png"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}