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
      body: new TextFormField(
        initialValue: 'Input text',
        decoration: InputDecoration(
          labelText: 'Label text',
          errorText: 'Error message',
          border: OutlineInputBorder(),
          suffixIcon: Icon(
            Icons.error,
          ),
        ),
      ),
    );
  }
}
