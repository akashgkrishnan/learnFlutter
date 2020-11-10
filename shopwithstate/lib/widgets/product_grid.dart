import 'package:flutter/material.dart';
import '../models/product.dart';
import './product_item.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;
    return GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return ProductItem(
            imageUrl: products[index].imageUrl,
            id: products[index].id,
            title: products[index].title,
          );
        });
  }
}
