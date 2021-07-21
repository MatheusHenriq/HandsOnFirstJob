import 'package:flutter/material.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/MyTextFormField.dart';

class Telephone extends StatelessWidget {
  Telephone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        title: Text('Telefone'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_right_alt,
              color: Colors.orange[300],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text(
              'Contato 1',
              style: TextStyle(
                color: Colors.orange[300],
              ),
            ),
            Text(
              'Contato 2',
              style: TextStyle(
                color: Colors.orange[300],
              ),
            ),
            TextFormField(),
          ],
        ),
      ),
    );
  }
}
