import 'package:flutter/material.dart';

class AddCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfffb5d04),
          title: Text(
            ' Catégorie',
            style: TextStyle(fontSize: 30, color: Colors.black),
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
                  "Ajouter une catégorie",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff333333),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                //height: 300,
                child: TextFormField(
                  //initialValue: 'nom',
                  decoration: InputDecoration(
                    labelText: 'Nom du catégorie *',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.category,
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
                    labelText: 'Image du catégorie ',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.add_a_photo,
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
                    labelText: 'Image du catégorie avec lien ',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.link,
                      color: Color(0xff333333),
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
                color: Color(0xfffb5d04),
                textColor: Colors.white,
                child: Text('Ajouter catégorie',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                onPressed: () {
                  showAlertDialog(context);
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
      /*Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SEMILAC()),
      )*/
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Confirmation"),
    content: Text("voulez vous confirmer votre ajout de cette catégorie?"),
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
