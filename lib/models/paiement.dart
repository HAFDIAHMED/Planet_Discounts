import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:MYAPP/screens/cart_screen.dart';
import '../models/cart.dart';
import '../widgets/cart_item.dart';
import '../screens/cart_item2.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffb5d04),
        title: Text(
          'Paiemant',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      body: ListView.builder(
          itemCount: cart.items.length,
          itemBuilder: (ctx, i) => CartPdt2(
                cart.items.values.toList()[i].id,
                cart.items.keys.toList()[i],
                cart.items.values.toList()[i].price,
                cart.items.values.toList()[i].quantity,
                cart.items.values.toList()[i].name,
              )),
    );
  }
}
