import 'package:flutter/material.dart';
import '../models/products.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import '../models/cart.dart';
import '../screens/contact.dart';
import 'package:gradual_stepper/gradual_stepper.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedPdt = Provider.of<Products>(context).findById(productId);

    final cart = Provider.of<Cart>(context);
    var scaffold2 = Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: Text(loadedPdt.name),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 200,
                margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(loadedPdt.imgUrl),
                ),
              ),

              //Image.network(loadedPdt.imgUrl),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          /*Container(
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [BoxShadow(blurRadius: 5, color: Colors.blueGrey)],
              ),
              child: new Center(
                  child: new Text(
                'Price: \$${loadedPdt.price}',
                style: TextStyle(
                  fontSize: 30,
                ),
              )),
            ),
          ),*/
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
            color: Color(0xFFFFFFFF),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                /*Text("Produit:".toUpperCase(),
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF565656))),*/
                Text(loadedPdt.name,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF565656))),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  //padding: EdgeInsets.only(left: 5, top: 5),
                  child: Text("En stock",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.green[300])),
                ),
                Container(
                  padding: EdgeInsets.only(top: 3, left: 5),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Color(0xFFfb3132),
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Color(0xFFfb3132),
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Color(0xFFfb3132),
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Color(0xFFfb3132),
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Color(0xFF9b9b9c),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: Text("200",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF565656))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
            color: Color(0xFFFFFFFF),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Prix".toUpperCase(),
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF565656))),
                Text("\$${loadedPdt.price} DH  ".toUpperCase(),
                    style: TextStyle(
                        color: Colors.orange,
                        //fontFamily: 'Roboto-Light.ttf',
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
                Text("100 DH".toUpperCase(),
                    style: TextStyle(
                        color: Colors.blueGrey,
                        //fontFamily: 'Roboto-Light.ttf',
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
            color: Color(0xFFFFFFFF),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Description:\n",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF565656))),
                SizedBox(
                  height: 15,
                ),
                Text("\$${loadedPdt.description}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF4c4c4c))),
              ],
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [BoxShadow(blurRadius: 5, color: Colors.blueGrey)],
              ),
              child: new Center(
                  child: new Text(
                '\$${loadedPdt.description}',
                style: TextStyle(
                  fontSize: 20,
                ),
              )),
            ),

            /*Text(
                '${loadedPdt.description}',
                style: TextStyle(
                  fontSize: 20,
                ),
              )*/
          ),*/

          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(8.0),
            child: GradualStepper(
                initialValue: 0,
                minimumValue: 0,
                maximumValue: 100,
                stepValue: 1,
                counterBackgroundColor: Colors.orange,
                //buttonsColor: Colors.pinkAccent,
                backgroundColor: Colors.black,
                onChanged: (int value) => {
                      cart.addItem(productId, loadedPdt.name, loadedPdt.price),
                    }),
          ),
        ],
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: () {
          cart.addItem(productId, loadedPdt.name, loadedPdt.price);
        },
        child: Icon(
          Icons.add_shopping_cart,
          size: 30,
        ),
      ),*/
    );
    var scaffold = scaffold2;
    return scaffold;
  }
}
