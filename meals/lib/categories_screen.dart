import 'package:flutter/material.dart';
import './dummy_data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('meal\'s',
              style: TextStyle(color: Colors.white, fontSize: 24)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView(
          children: DUMMY_CATEGORIES
              .map((catData) => CategoryItem(
                    catData.title,
                    catData.color,
                  ))
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
        ),
      ),
    );
  }
}
