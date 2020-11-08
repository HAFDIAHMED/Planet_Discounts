import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import './category_card.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        CategoryCard(
            /*Image(
              image: AssetImage('assets/icons/icons8-manicure.png'),
              width: 50,
            ),*/
            'Vétements'),
        CategoryCard(
            /*Image(
              image: AssetImage('assets/icons/icons8-face-powder-100.png'),
              width: 50,
            ),*/
            'Accessoires'),
        CategoryCard(
            /* Image(
              image: AssetImage('assets/icons/icons8-comb-100.png'),
              width: 50,
            ),*/
            'ordinateurs'),
        CategoryCard(
            /*Image(
              image: AssetImage('assets/icons/icons8-manicure.png'),
              width: 50,
            ),*/
            'Electronique'),
        CategoryCard(
            /*Image(
              image: AssetImage('assets/icons/icons8-manicure.png'),
              width: 50,
            ),*/
            'Bagages et sacs'),
      ]),
    );
  }
}
