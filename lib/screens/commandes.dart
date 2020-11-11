import 'package:flutter/material.dart';
import '../widgets/semilac.dart';

class Commande extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                //height: 300,
                child: TextFormField(
                  initialValue: 'nom',
                  decoration: InputDecoration(
                    labelText: 'Votre nom complet *',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
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
                  initialValue: 'Téléhone',
                  decoration: InputDecoration(
                    labelText: 'Votre numéro du Téléphone *',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.phone,
                      color: Colors.black,
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
                  initialValue: 'Adresse',
                  decoration: InputDecoration(
                    labelText: 'Votre Adresse complete *',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.home,
                      color: Colors.black,
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
                  initialValue: 'Ville',
                  decoration: InputDecoration(
                    labelText: 'Votre Ville *',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.location_city,
                      color: Colors.black,
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
                  initialValue: 'Téléphone',
                  decoration: InputDecoration(
                    labelText: 'Autre Téléphone',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                  ),
                ),
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
                color: Colors.orange,
                textColor: Colors.white,
                child: Text('Enovyer ma commande',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SEMILAC()),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
