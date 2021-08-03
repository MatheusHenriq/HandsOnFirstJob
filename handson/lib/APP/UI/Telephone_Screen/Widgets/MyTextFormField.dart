import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String DDD;
  final int Number_of_Characters;
  MyTextFormField(
      {this.DDD = '(86) ', this.Number_of_Characters = 1000000, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 300, height: 100),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: TextFormField(
          obscureText: false,
          maxLength: Number_of_Characters,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            fillColor: Colors.green[100],
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            prefixText: DDD,
            prefixStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            counterText: '',
          ),
        ),
      ),
    );
  }
}
