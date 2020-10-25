import 'package:flutter/material.dart';
import 'package:shopping/models/Product.dart';
import 'product_title_with_images.dart';
import 'package:shopping/constants.dart';
import 'color_and_size.dart';
import 'description.dart';
import 'counter_with_heart_btn.dart';
import 'add_to_cart.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  margin: EdgeInsets.only(top: size.height * 0.35),
                  // height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(29),
                          topRight: Radius.circular(29))),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPadding/2,),
                      Description(product: product),
                      SizedBox(height: kDefaultPadding/2,),
                      CounterWithHearBtn(),
                      SizedBox(height: kDefaultPadding/2,),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
