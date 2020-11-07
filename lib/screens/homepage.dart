import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

import '../widgets/home_body.dart';

import '../widgets/category.dart';

import '../widgets/all_pdts.dart';
import '../screens/cart_screen.dart';
import '../screens/contact.dart';
import '../screens/signup.dart';
import '../common_widget/DrawerWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          title: Image.asset(
            'assets/images/planetdiscountslogo1.png',
            width: 130,
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.shopping_basket,
                  size: 30,
                ),
                onPressed: () =>
                    Navigator.of(context).pushNamed(CartScreen.routeName)),
          ],
        ),
        body: HomeBody());
  }
}
