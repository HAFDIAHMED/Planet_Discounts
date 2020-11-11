import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

import '../widgets/home_body.dart';
import '../pages/SignInPage.dart';

import '../widgets/category.dart';

import '../widgets/all_pdts.dart';
import '../screens/cart_screen.dart';
import '../screens/contact.dart';
import 'commandes.dart';
import '../common_widget/DrawerWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          backgroundColor: Color(0xfffb5d04),
          title: Image.asset(
            'assets/images/planetdiscountslogo1.png',
            width: 130,
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.person,
                  size: 30,
                  color: Color(0xff333333),
                ),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    )),
            IconButton(
                icon: Icon(
                  Icons.shopping_basket,
                  size: 30,
                  color: Color(0xff333333),
                ),
                onPressed: () =>
                    Navigator.of(context).pushNamed(CartScreen.routeName)),
          ],
        ),
        body: HomeBody());
  }
}
