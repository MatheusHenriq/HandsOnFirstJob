import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: TextFormField(
        obscureText: false,
        decoration: InputDecoration(
          hoverColor: Colors.amber[200],
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          prefixText: '(86) ',
          prefixStyle: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
