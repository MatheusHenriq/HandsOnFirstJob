import 'package:flutter/material.dart';

class MyBar extends StatelessWidget {
  MyBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
