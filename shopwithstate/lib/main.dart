import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/user_products_screen.dart';
import 'screens/product_overview_screen.dart';
import 'screens/product_detail_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/order_Screen.dart';
import 'screens/edit_product_screen.dart';
import './providers/product_provider.dart';
import './providers/cart.dart';
import './providers/order.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          // value: Products(),
          create: (context) => Products(),
        ),
        ChangeNotifierProvider(
          // value: Cart(),
          create: (context) => Cart(),
        ),
        ChangeNotifierProvider(
          // value: Cart(),
          create: (context) => Order(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'shop state',
        theme: ThemeData(
          primaryColor: Colors.purple,
          accentColor: Colors.teal,
          fontFamily: 'Lato',
        ),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
          CartScreen.routeName: (context) => CartScreen(),
          OrderScreen.routeName: (context) => OrderScreen(),
          UserProductScreen.routeName: (context) => UserProductScreen(),
          EditProductScreen.routeName: (context) => EditProductScreen(),
        },
      ),
    );
  }
}
