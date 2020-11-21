import 'package:flutter/material.dart';

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class CartBank extends StatefulWidget {
  CartBank({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<CartBank> {
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
                "Sélectionnez une méthode de Paiment",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF3a3a3b),
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
          color: Colors.blueGrey[100],
          child: ListTile(
            title: const Text('Payez Maintenant !Remise instanténée de 5 DHs'),
            subtitle: const Text('Paiement par carte banquaire'),
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
            title: const Text('Paiement cash à la livraison '),
            subtitle:
                const Text('(favorisez vous le paiement par carte  bancuaire)'),
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
          child: PromoCodeWidget(),
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
