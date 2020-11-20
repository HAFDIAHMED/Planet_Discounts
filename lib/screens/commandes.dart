import 'package:flutter/material.dart';
import '../widgets/semilac.dart';
import '../models/paiement.dart';

class Commande extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Color(0xfffb5d04),
          title: Text(
            ' Commande',
            style:
                TextStyle(fontSize: 30, color: Theme.of(context).accentColor),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Valider Votre Commande",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff333333),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                //height: 300,
                child: TextFormField(
                  //initialValue: 'nom',
                  decoration: InputDecoration(
                    labelText: 'Votre nom complet *',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.person,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                //height: 300,
                child: TextFormField(
                  //initialValue: 'Téléhone',
                  decoration: InputDecoration(
                    labelText: 'Votre numéro du Téléphone *',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.phone,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                //height: 300,
                child: TextFormField(
                  //initialValue: 'Adresse',
                  decoration: InputDecoration(
                    labelText: 'Votre Adresse complete *',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.home,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                //height: 300,
                child: TextFormField(
                  //initialValue: 'Ville',
                  decoration: InputDecoration(
                    labelText: 'Votre Ville *',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.location_city,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                //height: 300,
                child: TextFormField(
                  //initialValue: 'Téléphone',
                  decoration: InputDecoration(
                    labelText: 'Autre Téléphone',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.phone,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: PromoCodeWidget(),
              ),
              SizedBox(
                height: 30,
              ),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Payment()),
                  );
                },
              ),
            ],
          ),
        ));
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

class PromoCodeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 3, right: 3),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0xFFfae3e2).withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ]),
        child: TextFormField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFe6e1e1), width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFe6e1e1), width: 1.0),
                  borderRadius: BorderRadius.circular(7)),
              fillColor: Colors.white,
              hintText: 'Ajouter votre code coupon',
              filled: true,
              suffixIcon: IconButton(
                  icon: Icon(
                    Icons.local_offer,
                    color: Color(0xFFfd2c2c),
                  ),
                  onPressed: () {
                    debugPrint('222');
                  })),
        ),
      ),
    );
  }
}
