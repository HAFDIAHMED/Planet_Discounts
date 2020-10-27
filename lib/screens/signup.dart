import 'package:flutter/material.dart';

class SingUp extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SingUp',
          style: TextStyle(fontSize: 30, color: Theme.of(context).accentColor),
        ),
      ),
    );
  }
}
