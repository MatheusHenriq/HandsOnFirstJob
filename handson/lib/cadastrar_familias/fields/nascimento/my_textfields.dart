import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget {
  final String? hint_text;
  final int? quantidade_digitos;
  const MyTextForm({Key? key, this.hint_text, this.quantidade_digitos})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 25,
      child: TextField(
        textAlign: TextAlign.center,
        cursorColor: Colors.black,
        cursorHeight: 20,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: "",
          hintText: hint_text,
          focusColor: Colors.black,
          hoverColor: Colors.black,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1),
          ),
        ),
        maxLength: quantidade_digitos,
      ),
    );
  }
}
