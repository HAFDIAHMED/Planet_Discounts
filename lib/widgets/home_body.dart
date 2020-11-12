import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../widgets/category.dart';
import '../widgets/all_pdts.dart';
import '../widgets/srearchBar.dart';
import '../common_widget/TopPromoSlider.dart';
import '../screens/product_screens_grid.dart';
import '../common_widget/TopMenu.dart';
import '../screens/liste_category.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SearchWidget(),
        TopPromoSlider(),
        SizedBox(
          height: 10,
        ),
        /*Center(
            child: Text(
          'Catégories',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),*/
        TousCategory(),
        SizedBox(
          height: 10,
        ),
        TopMenus(),
        /*Center(
            child: Text(
          'Produits',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),*/
        TousPdt(),
        AllProducts()
      ],
    );
  }
}

class TousPdt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Produits",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
          /*Text(
            "Voir Tout",
            style: TextStyle(
                fontSize: 16,
                color: Colors.blue[400],
                fontWeight: FontWeight.bold),
          ),*/
          RichText(
            text: TextSpan(
              text: 'see all(54)',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue[400],
                  fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()
                ..onTap = () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PdtSGride()),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

class TousCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Catégories",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
          /*Text(
            "Voir Tout",
            style: TextStyle(
                fontSize: 16,
                color: Colors.blue[400],
                fontWeight: FontWeight.bold),
          )*/
          RichText(
            text: TextSpan(
              text: 'see all(23)',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue[400],
                  fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()
                ..onTap = () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListCategory()),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
