import 'package:flutter/material.dart';
import 'package:MYAPP/models/orders.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../widgets/cart_item.dart';
import 'package:MYAPP/main.dart';
import '../widgets/semilac.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffb5d04),
        title: Text(
          'Mon panier',
          style: TextStyle(fontSize: 30, color: Color(0xff333333)),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (ctx, i) => CartPdt(
                      cart.items.values.toList()[i].id,
                      cart.items.keys.toList()[i],
                      cart.items.values.toList()[i].price,
                      cart.items.values.toList()[i].quantity,
                      cart.items.values.toList()[i].name,
                    )),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('TOTAL:\ ${cart.totalAmount.toString()} DH'),
                    /*Text(
                      cart.totalAmount.toString(),
                      //"89.01 DH",
                    )*/
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  child: CheckoutButton(
                    cart: cart,
                  ),
                ),
              ),
            ],
          ),
          /*CheckoutButton(
            cart: cart,
          ),*/

          // FlatButton(
          //     onPressed: () {
          //     },
          //     child: Text(
          //       'Checkout',
          //       style: TextStyle(color: Colors.blue, fontSize: 20),
          //     ))
        ],
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SEMILAC()),
        ),
        child: Icon(
          Icons.home,
          size: 30,
        ),
      ),*/
    );
  }
}

class CheckoutButton extends StatefulWidget {
  final Cart cart;

  const CheckoutButton({@required this.cart});
  @override
  _CheckoutButtonState createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          side: BorderSide(color: Color(0xFFfef2f2))),
      color: Colors.orange,
      textColor: Colors.white,
      child: Text('Commander',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black)),
      onPressed: widget.cart.totalAmount <= 0
          ? null
          : () async {
              await Provider.of<Orders>(context, listen: false).addOrder(
                  widget.cart.items.values.toList(), widget.cart.totalAmount);
              widget.cart.clear();
            },
    );
  }
}
