import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:MYAPP/screens/cart_screen.dart';
import '../models/cart.dart';
import '../widgets/cart_item.dart';

class Revision extends StatelessWidget {
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
        body: ListView(children: <Widget>[
          Text("f"),
          Text('f'),
        ]));
  }
}
