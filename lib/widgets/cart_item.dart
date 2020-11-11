import 'package:flutter/material.dart';
import '../models/cart.dart';
import 'package:provider/provider.dart';

class CartPdt extends StatelessWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String name;
  CartPdt(this.id, this.productId, this.price, this.quantity, this.name);
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      background: Container(
        child: Icon(Icons.restore_from_trash),
        color: Colors.red,
      ),
      onDismissed: (direction) {
        Provider.of<Cart>(context).removeItem(productId);
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: FittedBox(
              child: Text('\DH$price'),
            ),
          ),
          title: Text(name),
          subtitle: Text('Total: \ ${(price * quantity)} DH'),
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}
