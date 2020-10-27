import 'package:MYAPP/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:MYAPP/main.dart';
import '../screens/contact.dart';
import '../screens/signup.dart';
import '../screens/notifications.dart';
import '../widgets/semilac.dart';

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
                text: 'Home',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SEMILAC()),
                    )),
            _createDrawerItem(
                icon: FontAwesomeIcons.user,
                text: 'Sign In',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SingUp()),
                    )),
            _createDrawerItem(
                icon: Icons.shopping_basket,
                text: 'My Cart ',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartScreen()),
                    )),
            _createDrawerItem(
                icon: Icons.notifications_active,
                text: 'Notifications',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Notifications()),
                    )),
            _createDrawerItem(
                icon: Icons.branding_watermark,
                text: 'Nos Marques',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SEMILAC()),
                    )),
            _createDrawerItem(
                icon: Icons.card_giftcard,
                text: 'Fidélité',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SEMILAC()),
                    )),
            _createDrawerItem(
                icon: Icons.call,
                text: 'Contact Us',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Contact()),
                    )),
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
              'assets/images/ic_app_icon.png',
              width: 130,
              height: 130,
            ),
          ),
        ),
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Developed  by SEMILAC'",
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
