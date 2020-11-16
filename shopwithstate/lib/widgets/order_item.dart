import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../providers/order.dart' as OrderItemProvider;

class OrderItem extends StatelessWidget {
  final OrderItemProvider.OrderItem order;

  const OrderItem({Key key, this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          ListTile(
            title: Text('\$${order.amount}'),
            subtitle: Text(
              DateFormat('dd/MM/yyyy hh:mm').format(order.dateTime),
            ),
            trailing: IconButton(
              icon: Icon(Icons.expand_more),
            ),
          ),
        ],
      ),
    );
  }
}
