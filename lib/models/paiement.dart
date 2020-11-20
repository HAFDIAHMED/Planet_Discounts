import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:MYAPP/screens/cart_screen.dart';
import '../models/cart.dart';
import '../widgets/cart_item.dart';
import '../screens/cart_item2.dart';
import '../widgets/semilac.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffb5d04),
        title: Text(
          'Paiemant',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (ctx, i) => CartPdt2(
                    cart.items.values.toList()[i].id,
                    cart.items.keys.toList()[i],
                    cart.items.values.toList()[i].price,
                    cart.items.values.toList()[i].quantity,
                    cart.items.values.toList()[i].name,
                  )),
        ),
        Text("TOTAL aprés reduction:\ ${cart.totalAmount.toString()} DH"),
        FlatButton(
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              side: BorderSide(color: Color(0xFFfef2f2))),
          color: Color(0xfffb5d04),
          textColor: Colors.white,
          child: Text('Enovyer ma commande',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
          onPressed: () {
            showAlertDialog(context);
          },
        ),
      ]),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed: () => {
      Navigator.of(context, rootNavigator: true).pop(AlertDialog),
      //Navigator.push(context,MaterialPageRoute(builder: (context) => Commande())),
      //Navigator.of(context, rootNavigator: true).pop('alert'),
    },
  );
  Widget continueButton = FlatButton(
    child: Text("Continue"),
    onPressed: () => {
      Navigator.of(context, rootNavigator: true).pop(AlertDialog),
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SEMILAC()),
      )
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Confirmation"),
    content: Text("voulez vous confirmer votre commande?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
