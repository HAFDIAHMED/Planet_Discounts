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
          title: Image.asset('assets/images/ic_app_icon.png'),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.shopping_basket,
                  size: 30,
                ),
                onPressed: () =>
                    Navigator.of(context).pushNamed(CartScreen.routeName)),
            IconButton(
              icon: Icon(
                Icons.card_giftcard,
                color: Colors.purple,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SingUp()),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.branding_watermark,
                color: Colors.orange,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SingUp()),
                );
              },
            ),
          ],
        ),
        body: HomeBody());
  }
}
