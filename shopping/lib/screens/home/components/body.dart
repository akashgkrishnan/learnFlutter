import 'package:flutter/material.dart';
import 'package:shopping/constants.dart';
import 'categories.dart';
import 'package:shopping/models/Product.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: kDefaultPadding,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisCount: 2,
                  childAspectRatio: 0.75),
              itemBuilder: (context, index) => ItemCard(
                    product: products[index],
                  )),
        ))
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
              color: product.color, borderRadius: BorderRadius.circular(20)),
          child: Image.asset(product.image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            product.title,
            style: TextStyle(color: kTextColor),
          ),
        ),
        Text(
          '\$ ${product.price}',
          style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
