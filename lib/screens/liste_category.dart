import 'package:flutter/material.dart';
import '../widgets/semilac.dart';

class ListCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfffb5d04),
          title: Text(
            ' Catégories/Articles',
            style:
                TextStyle(fontSize: 30, color: Theme.of(context).accentColor),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Center(
                  child: Text(
                    'Categories',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/topmenu/ic_bag (6).png',
                        width: 50),
                    title: Text('Vétéments'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading:
                        Image.asset('assets/images/topmenu/ic_bag (5).png'),
                    title: Text('Sac et bagages'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading:
                        Image.asset('assets/images/topmenu/ic_bag (4).png'),
                    title: Text('sac'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading:
                        Image.asset('assets/images/topmenu/ic_bag (3).png'),
                    title: Text('Ordinateurs'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading:
                        Image.asset('assets/images/topmenu/ic_bag (2).png'),
                    title: Text('Livres'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading:
                        Image.asset('assets/images/topmenu/ic_bag (1).png'),
                    title: Text('Accesoires'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading:
                        Image.asset('assets/icons/icons8-face-powder-100.png'),
                    title: Text('Make up'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading:
                        Image.asset('assets/images/topmenu/ic_bag (6).png'),
                    title: Text('autres'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
