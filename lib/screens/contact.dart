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
        backgroundColor: Colors.pink,
        title: Text(
          'Contact US',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),

      ///backgroundColor: Colors.white,
      body: ListView(children: <Widget>[
        ContactUs(
          //logo: AssetImage('assets/images/ic_app_icon.png'),
          image: Image.asset(
            'assets/images/ic_app_icon.png',
            width: 190,
            height: 130,
          ),
          textColor: Colors.white,
          cardColor: Colors.pink,
          companyColor: Colors.black87,
          tagLine: "Your Shop for the  beauty",
          taglineColor: Colors.black,
          email: 'semilac@gmail.com',
          companyName: 'Our Contacts',
          phoneNumber: '+91123456789',
          website: 'https://semilac.com',
          facebookHandle: 'https://facebook.com',
          instagram: 'https://insta.com',
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
          Icons.home,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
