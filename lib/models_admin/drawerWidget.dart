import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'categories.dart';
import '../models_admin/profilepage.dart';
import 'package:provider/provider.dart';
import '../screens/product_screens_grid.dart';

class DrawerWidgetADMIN extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidgetADMIN> {
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
                icon: Icons.account_circle,
                text: 'Compte Admin',
                onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      )
                    }),
            _createDrawerItem(
                icon: Icons.category,
                text: 'Catégories',
                onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      )
                    }),
            _createDrawerItem(
                icon: FontAwesomeIcons.productHunt,
                text: 'Produits',
                onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PdtSGride()),
                      )
                    }),
            _createDrawerItem(
                icon: Icons.shopping_basket,
                text: 'Commandes',
                onTap: () => {}),
            _createDrawerItem(
                icon: Icons.branding_watermark,
                text: 'Marques/Brands',
                onTap: () => {}),
            _createDrawerItem(
                icon: Icons.supervisor_account,
                text: 'Comptes',
                onTap: () => {}),
            _createDrawerItem(
                icon: Icons.insert_chart,
                text: 'Statistiques',
                onTap: () => {}),
            _createDrawerItem(
                icon: Icons.contacts, text: 'Contacts', onTap: () => {}),
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
            child: Text("Developed by PlanetDiscount",
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
