import 'package:MYAPP/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:MYAPP/screens/pdt_detail_screen.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import '../models/cart.dart';

class PdtItem2 extends StatelessWidget {
  final String name;
  final String imageUrl;

  PdtItem2({this.name, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    final pdt = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailPage.routeName, arguments: pdt.id);
      },

/////////////
      child: Container(
        padding: EdgeInsets.only(top: 5),
        child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            elevation: 0,
            child: Center(
              child: Column(
                children: <Widget>[
                  Image.network(
                    pdt.imgUrl,
                    //width: 100,
                    height: 100,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                    child: Text(pdt.name,
                        //(name.length <= 40 ? name : name.substring(0, 40)),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0xFF444444),
                            fontFamily: 'Roboto-Light.ttf',
                            fontSize: 10,
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Text(" ${pdt.price} DH",
                        style: TextStyle(
                            color: (pdt.price != null)
                                ? Color(0xFFf67426)
                                : Color(0xFF0dc2cd),
                            fontFamily: 'Roboto-Light.ttf',
                            fontSize: 10,
                            fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            )),
      ),
/////////////

      /*child: Padding(
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
                  child: Image.network(imageUrl),
                ),

                //Image.network(imageUrl),
                footer: GridTileBar(
                  title:
                      Text(pdt.category, style: TextStyle(color: Colors.black)),
                  /* trailing: 
                  IconButton(
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
                  backgroundColor: Colors.orange, */
                )),
          ),
        )*/
    );
  }
}
