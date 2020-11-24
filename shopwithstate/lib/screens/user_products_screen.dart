import 'package:flutter/material.dart';
import '../providers/product_provider.dart';
import 'package:provider/provider.dart';
import '../widgets/user_product_item.dart';
import '../widgets/app_drawer.dart';
import 'edit_product_screen.dart';

class UserProductScreen extends StatelessWidget {
  static const routeName = '/user-products';
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(EditProductScreen.routeName);
              })
        ],
        title: const Text('my products'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: productsData.items.length,
          itemBuilder: (context, index) {
            final prod = productsData.items[index];
            return Column(
              children: [
                UserProductItem(
                  imageUrl: prod.imageUrl,
                  title: prod.title,
                  id: prod.id, 
                ),
                Divider(),
              ],
            );
          },
        ),
      ),
    );
  }
}
