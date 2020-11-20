import 'package:flutter/material.dart';

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class Facture extends StatefulWidget {
  Facture({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Facture> {
  BestTutorSite _site = BestTutorSite.javatpoint;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "VOTRE COMMANDE",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF3a3a3b),
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
          color: Color(0xFFFFFFFF),
          child: ListTile(
            title: const Text(
                'Sous-total :                 XXX.XX DH \nFrais de Livraison :    XX.XX DH\n______________________________\nTotal :                           XXX.XX DH'),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "VOTRE ADRESSE",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF3a3a3b),
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
          color: Color(0xFFFFFFFF),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "Mr Samir  client ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Ville X , Quartier Y\n +212666666666"),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "VOTRE METHODE DE LIVRAISON",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF3a3a3b),
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
          color: Color(0xFFFFFFFF),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "Livraison dans Casablanca ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                    "Livré entre la date depart et la date fin.\n Frais de livraison : 19 DH"),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "VOTRE METHODE DE PAIEMENT",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF3a3a3b),
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
          color: Color(0xFFFFFFFF),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "Paiement cash à la livraison  ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle:
                    Text("(favorisez vous le paiement par carte  bancuaire)"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
