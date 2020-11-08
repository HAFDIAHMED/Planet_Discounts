import 'package:MYAPP/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:MYAPP/main.dart';
import '../screens/contact.dart';
import '../screens/signup.dart';
import '../screens/notifications.dart';
import '../widgets/semilac.dart';
import '../screens/product_screens_grid.dart';
import '../screens/allpdts2.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createDrawerHeader(),
            _createDrawerItem(
                icon: Icons.home,
                text: 'Acceuil',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SEMILAC()),
                    )),
            _createDrawerItem(
                icon: Icons.category,
                text: 'Catégories',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SEMILAC()),
                    )),
            _createDrawerItem(
                icon: FontAwesomeIcons.productHunt,
                text: 'Produits',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PdtSGride()),
                    )),
            _createDrawerItem(
                icon: Icons.shopping_basket,
                text: 'Mon Panier',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartScreen()),
                    )),
            _createDrawerItem(
                icon: Icons.branding_watermark,
                text: 'Nos Marques',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SEMILAC()),
                    )),
            _createDrawerItem(
                icon: Icons.call,
                text: 'Contact',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Contact()),
                    )),
            SizedBox(
              height: 90,
            ),
            Center(
              child: Wrap(
                direction: Axis.horizontal,
                children: <Widget>[
                  ButtonTheme(
                    //minWidth: 40.0,
                    child: RaisedButton(
                      color: Colors.white,
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Contact()),
                      ),
                      child: Image.asset(
                        'assets/images/facebook.jpg',
                        width: 30,
                      ),
                    ),
                  ),
                  ButtonTheme(
                    //minWidth: 40.0,
                    child: RaisedButton(
                      color: Colors.white,
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Contact()),
                      ),
                      child: Image.asset(
                        'assets/images/insta.png',
                        width: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///
///
Widget _createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Image.asset(
              'assets/images/planetdiscountslogo.png',
              width: 220,
              height: 220,
            ),
          ),
        ),
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Developed  by PlanetDiscount",
                style: TextStyle(
                    color: Color(0xFF545454),
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500))),
      ]));
}

Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xFF808080),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            text,
            style: TextStyle(color: Color(0xFF484848)),
          ),
        )
      ],
    ),
    onTap: onTap,
  );
}
