import 'package:flutter/material.dart';
import 'package:steppers/steppers.dart';
import '../models/livraison_frais.dart';
import 'package:flutter/gestures.dart';
import '../screens/commandes.dart';
import '../models/cart_bank.dart';
import '../models/facture.dart';

class Tree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Stepper Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'validation de la commande'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        backgroundColor: Color(0xfffb5d04),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stepper(
          type: StepperType.horizontal,
          steps: _mySteps(),
          currentStep: this._currentStep,
          onStepTapped: (step) {
            setState(() {
              this._currentStep = step;
            });
          },
          onStepContinue: () {
            setState(() {
              if (this._currentStep < this._mySteps().length - 1) {
                this._currentStep = this._currentStep + 1;
              } else {
                //Logic to check if everything is completed
                //print('Completed, check fields.');
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (this._currentStep > 0) {
                this._currentStep = this._currentStep - 1;
              } else {
                this._currentStep = 0;
              }
            });
          },
        ),
      ),
    );
  }

  List<Step> _mySteps() {
    List<Step> _steps = [
      Step(
        title: Text(
          'Livraison',
          style: TextStyle(fontSize: 10),
        ),
        content: MyStatefulWidget(),
        isActive: _currentStep >= 0,
      ),
      Step(
        title: Text('Paiement', style: TextStyle(fontSize: 10)),
        content: CartBank(),
        isActive: _currentStep >= 1,
      ),
      Step(
        title: Text('Résumé', style: TextStyle(fontSize: 10)),
        content: Facture(),
        isActive: _currentStep >= 2,
      )
    ];
    return _steps;
  }
}

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
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
                "Détails s'address",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF3a3a3b),
                    fontWeight: FontWeight.w300),
              ),
              RichText(
                text: TextSpan(
                  text: 'Changer',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xfffb5d04),
                      fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Commande()),
                        ),
                ),
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
                "Sélectionnez une méthode de livraison",
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
          color: Colors.blueGrey[100],
          child: ListTile(
            title: const Text('Livraison dans Casablanca'),
            subtitle: const Text(
                'Livré entre la date depart et la date fin.\n Frais de livraison : 19 DH'),
            leading: Radio(
              activeColor: Color(0xfffb5d04),
              value: BestTutorSite.javatpoint,
              groupValue: _site,
              onChanged: (BestTutorSite value) {
                setState(() {
                  _site = value;
                });
              },
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
          child: ListTile(
            title: const Text('Livraison hors de  Casablanca'),
            subtitle: const Text(
                'Livré entre la date depart et la date fin.\n Frais de livraison : 29 DH'),
            leading: Radio(
              activeColor: Color(0xfffb5d04),
              value: BestTutorSite.w3schools,
              groupValue: _site,
              onChanged: (BestTutorSite value) {
                setState(() {
                  _site = value;
                });
              },
            ),
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
      ],
    );
  }
}
