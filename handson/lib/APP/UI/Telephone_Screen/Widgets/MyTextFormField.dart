import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 300, height: 100),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: TextFormField(
          obscureText: false,
          maxLength: 9,
          decoration: InputDecoration(
            hoverColor: Colors.amber[200],
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            prefixText: '(86) ',
            prefixStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            counterText: '',
          ),
        ),
      ),
    );
  }
}
