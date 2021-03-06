import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String DDD;
  final int Number_of_Characters;
  final TextInputType Text_Type;
  final double TextFormFiledWidth;
  MyTextFormField(
      {this.DDD = '(86) ',
      this.Number_of_Characters = 1000000,
      this.Text_Type = TextInputType.text,
      this.TextFormFiledWidth = double.infinity,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: TextFormFiledWidth,
      child: TextFormField(
        obscureText: false,
        maxLength: Number_of_Characters,
        keyboardType: Text_Type,
        decoration: InputDecoration(
          fillColor: Colors.green[100],
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          prefixText: DDD,
          prefixStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          counterText: '',
        ),
      ),
    );
  }
}
