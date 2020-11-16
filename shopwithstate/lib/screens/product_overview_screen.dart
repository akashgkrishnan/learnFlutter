import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';
import '../widgets/product_grid.dart';
import '../widgets/badge.dart';
import '../screens/cart_screen.dart';
import '../widgets/app_drawer.dart';

enum FilterOptions {
  Favourites,
  All,
}

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavs = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('shop'),
        actions: [
          Consumer<Cart>(
            builder: (_, cartItem, ch) => Badge(
              child: ch,
              value: cartItem.numOfCartItems.toString(),
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_bag),
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
            ),
          ),
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favourites) {
                  _showOnlyFavs = true;
                } else {
                  _showOnlyFavs = false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('fav'),
                value: FilterOptions.Favourites,
              ),
              PopupMenuItem(
                child: Text('All'),
                value: FilterOptions.All,
              ),
            ],
          ),
        ],
      ),
      body: ProductsGrid(showFavs: _showOnlyFavs),
    );
  }
}
