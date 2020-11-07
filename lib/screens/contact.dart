import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';
import 'package:MYAPP/main.dart';
import '../widgets/semilac.dart';

class Contact extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Contacts ',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),

      ///backgroundColor: Colors.white,
      body: ListView(children: <Widget>[
        ContactUs(
          //logo: AssetImage('assets/images/ic_app_icon.png'),
          image: Image.asset(
            'assets/images/planetdiscountslogo.png',
            width: 190,
            height: 130,
          ),
          textColor: Colors.black,
          cardColor: Colors.orange,
          companyColor: Colors.black87,
          taglineColor: Colors.grey,
          email: 'semilac@gmail.com',
          companyName: 'Nos Contacts',
          phoneNumber: '+91123456789',
          website: 'https://planetdiscounts.ma',
          facebookHandle: 'https://facebook.com',
          instagram: 'https://instagram.com',
          //linkedinURL: 'https://www.linkedin.com',
          //twitterHandle: 'semilac',
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SEMILAC()),
        ),
        child: Icon(
          Icons.send,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}
