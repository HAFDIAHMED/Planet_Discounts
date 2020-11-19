import 'package:flutter/material.dart';
import '../models/livraison_frais.dart';

class Livraison extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "La Livraison";

    List choices = const [
      const Choice(
          title: 'Avec Planet Discounts',
          //date: '1 June 2019',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          imglink: 'assets/images/planetdiscountslogo.png'),
      const Choice(
          title: 'Avec  Amana',
          //date: '1 June 2016',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          imglink: 'assets/images/amana.png'),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color(0xfffb5d04),
        ),
        body: new ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: List.generate(choices.length, (index) {
              return Center(
                child: ChoiceCard(choice: choices[index], item: choices[index]),
              );
            })));
  }
}

class Choice {
  final String title;
  //final String date;
  final String description;
  final String imglink;

  const Choice({this.title, this.description, this.imglink});
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
      this.choice,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);

  final Choice choice;

  final VoidCallback onTap;

  final Choice item;

  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;

    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);

    return Card(
        color: Colors.white,
        child: Column(
          children: [
            new Container(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(choice.imglink)),
            new Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(choice.title, style: Theme.of(context).textTheme.title),
                  Text(choice.description),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Frais()),
                      );
                    },
                    color: Color(0xfffb5d04),
                    textColor: Colors.white,
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text("Voir les frais".toUpperCase(),
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                    ),
                  ),
                ],
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }
}
