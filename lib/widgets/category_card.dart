import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

class CategoryCard extends StatelessWidget {
  //final Image image;
  final String name;
  /*this.image,*/
  CategoryCard(this.name);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            //borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(blurRadius: 5, color: Colors.blueGrey)],
          ),
          width: 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                //image,
                /*SizedBox(
                  height: 10,
                ),*/
                Text(name,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))
              ],
            ),
          )),
    );
  }
}
