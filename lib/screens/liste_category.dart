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
          child: ListView(
            children: <Widget>[
              Center(
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Sun'),
              ),
              ListTile(
                leading: Icon(Icons.brightness_3),
                title: Text('Moon'),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Star'),
              ),
            ],
          ),
        ));
  }
}
