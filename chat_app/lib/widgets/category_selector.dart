import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  State createState() {
    return _CategorySelectorState();
  }
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['messages', 'online', 'group', 'requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: selectedIndex == index ?Colors.white : Colors.white60,
                  letterSpacing: 1.25,
                ),
              ),
            ),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
