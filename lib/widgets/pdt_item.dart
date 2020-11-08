import 'package:MYAPP/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:MYAPP/screens/pdt_detail_screen.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import '../models/cart.dart';

class PdtItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  PdtItem({this.name, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    final pdt = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context);
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(DetailPage.routeName, arguments: pdt.id);
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 10,
                  blurRadius: 5,

                  offset: Offset(0, 7), // changes position of shadow
                ),
              ],
            ),
            child: GridTile(
                child: Container(
                  width: 200,
                  margin: EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(imageUrl),
                  ),
                ),

                //Image.network(imageUrl),
                footer: GridTileBar(
                  title: Text(name, style: TextStyle(color: Colors.black)),
                  trailing: IconButton(
                      icon: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          duration: Duration(seconds: 3),
                          content: Text('produit ajouté au panier'),
                        ));
                        cart.addItem(pdt.id, pdt.name, pdt.price);
                      }),
                  backgroundColor: Colors.orange,
                )),
          ),
        ));
  }
}
