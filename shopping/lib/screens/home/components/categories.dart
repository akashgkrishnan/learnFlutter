import 'package:flutter/material.dart';
import 'package:shopping/constants.dart';


class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() {
    return _CategoriesState();
  }
}

class _CategoriesState extends State<Categories> {
  final List<String> categories = [
    'hang bag',
    'jewellery',
    'footwear',
    'dress',
    'lingerie',
    'party wear',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCategoriesText(index),
          itemCount: categories.length,
        ),
      ),
    );
  }

  Widget buildCategoriesText(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? kTextColor : kTextLightColor,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: kDefaultPadding / 4),
                height: 2,
                width: 25,
                color:
                    selectedIndex == index ? Colors.black : Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
