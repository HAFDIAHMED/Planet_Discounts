import 'package:flutter/material.dart';
import '../widgets/all_pdts.dart';
import 'allpdts2.dart';

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
            Center(
              child: Text(
                'Produits',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            AllProducts2()
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
