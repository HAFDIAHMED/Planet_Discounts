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
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:MYAPP/screens/cart_screen.dart';
import '../screens/product_screens_grid.dart';
import '../screens/liste_category.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: Color(0xfffb5d04),
        title: Image.asset(
          'assets/images/planetdiscountslogo111.png',
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
      body: HomeBody(),
      floatingActionButton: SpeedDial(
        // both default to 16
        marginRight: 18,
        marginBottom: 20,
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),

        //visible: _dialVisible,

        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => {},
        onClose: () => {},
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 8.0,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
              child: Icon(FontAwesomeIcons.productHunt),
              backgroundColor: Colors.orange,
              label: 'Porduits',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PdtSGride()),
                    )
                  }),
          SpeedDialChild(
            child: Icon(Icons.category),
            backgroundColor: Color(0xfffb5d04),
            label: 'Catégories',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListCategory()),
              )
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.shopping_cart),
            backgroundColor: Color(0xfffb5d04),
            label: 'Mon panier',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              )
            },
          ),
        ],
      ),
    );
  }
}
