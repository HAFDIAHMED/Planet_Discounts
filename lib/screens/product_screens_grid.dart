import 'package:flutter/material.dart';
import '../widgets/all_pdts.dart';

class PdtSGride extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Articles',
            style:
                TextStyle(fontSize: 30, color: Theme.of(context).accentColor),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Text(
              'Produits',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            AllProducts()
          ],
        ));
  }
}
/*ListView(
      children: <Widget>[
        Text(
          'Produits',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        AllProducts()
      ],
    )*/
