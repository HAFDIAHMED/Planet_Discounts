import 'package:flutter/material.dart';

class SingUp extends StatelessWidget {
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
