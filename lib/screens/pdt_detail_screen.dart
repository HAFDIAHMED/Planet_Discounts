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
        backgroundColor: Color(0xfffb5d04),
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
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    loadedPdt.imgUrl,
                    height: 240.0,
                    //width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
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

                  child: Text("    En stock",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.greenAccent[400])),
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
                Text("${loadedPdt.price} DH".toUpperCase(),
                    style: TextStyle(
                        color: Color(0xfffb5d04),
                        //fontFamily: 'Roboto-Light.ttf',
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
                Text("100 DH".toUpperCase(),
                    style: TextStyle(
                        color: Colors.blueGrey,
                        //fontFamily: 'Roboto-Light.ttf',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough)),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Text("Taille:",
                    //textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF565656))),
                DropdownButton<String>(
                  items:
                      <String>['S', 'M', 'L', 'XL', 'XXL'].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),

                ///
                Text("Color:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF565656))),
                DropdownButton<String>(
                  items: <String>['vert', 'rouge', 'noir', 'blanc']
                      .map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
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
                Text(loadedPdt.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF4c4c4c))),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyCounter(),
    );
    var scaffold = scaffold2;
    return scaffold;
  }
}

class MyCounter extends StatefulWidget {
  const MyCounter({
    Key key,
  }) : super(key: key);

  @override
  _MyCounterState createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int _currentAmount = 0;
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedPdt = Provider.of<Products>(context).findById(productId);

    final cart = Provider.of<Cart>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Quantité:",
          ),
        ),
        //SizedBox(width: 10),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
          onTap: () {
            setState(() {
              if (_currentAmount > 0) {
                _currentAmount -= 1;
                cart.removeItem(productId);
              }
            });
          },
        ),
        SizedBox(width: 15),
        Text(
          "$_currentAmount",
          //style: Theme.of(context).textTheme.title,
        ),
        SizedBox(width: 15),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          onTap: () {
            setState(() {
              _currentAmount += 1;
              cart.addItem(productId, loadedPdt.name, loadedPdt.price);
            });
          },
        ),
        //Spacer(),
        //SizedBox(width: 30),
        RaisedButton(
          elevation: 0,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              side: BorderSide(color: Color(0xFFfef2f2))),
          onPressed: () {
            cart.addItem(productId, loadedPdt.name, loadedPdt.price);
          },
          color: Color(0xfffb5d04),
          textColor: Colors.white,
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Text("ajouter au panier".toUpperCase(),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
          ),
        ),
      ],
    );
  }
}
