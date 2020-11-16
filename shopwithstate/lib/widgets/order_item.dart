import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../providers/order.dart' as OrderItemProvider;

class OrderItem extends StatefulWidget {
  final OrderItemProvider.OrderItem order;

  const OrderItem({Key key, this.order}) : super(key: key);

  @override
  _OrderItemState createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          ListTile(
            title: Text('\$${widget.order.amount}'),
            subtitle: Text(
              DateFormat('dd/MM/yyyy hh:mm').format(widget.order.dateTime),
            ),
            trailing: IconButton(
              icon: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
            ),
          ),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: min(widget.order.products.length * 20.0 + 10, 180),
                child: ListView(
                  children: widget.order.products
                      .map(
                        (prod) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              prod.title,
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${prod.quantity} x  \$${prod.price}',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
