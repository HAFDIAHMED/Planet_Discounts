import 'package:flutter/material.dart';
import '../models/cart.dart';
import 'package:provider/provider.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:MYAPP/screens/pdt_detail_screen.dart';

class CartPdt2 extends StatelessWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String name;
  CartPdt2(this.id, this.productId, this.price, this.quantity, this.name);
  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: ValueKey(id),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {},
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                title: Text(name),
                subtitle: Text('Total: \ ${(price * quantity)} DH'),
                trailing: Text('$quantity x'),
              ),
            ],
          ),
        ));
  }
}
