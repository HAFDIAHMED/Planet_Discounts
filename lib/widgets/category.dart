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
            Image(
              image: AssetImage('assets/icons/icons8-manicure.png'),
              width: 50,
            ),
            'Manucure'),
        CategoryCard(
            Image(
              image: AssetImage('assets/icons/icons8-face-powder-100.png'),
              width: 50,
            ),
            'Make up'),
        CategoryCard(
            Image(
              image: AssetImage('assets/icons/icons8-comb-100.png'),
              width: 50,
            ),
            'Coiffant'),
        CategoryCard(
            Image(
              image: AssetImage('assets/icons/icons8-manicure.png'),
              width: 50,
            ),
            'watches'),
        CategoryCard(
            Image(
              image: AssetImage('assets/icons/icons8-manicure.png'),
              width: 50,
            ),
            'Iphone'),
      ]),
    );
  }
}
