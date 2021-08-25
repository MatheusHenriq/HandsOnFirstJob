import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String DDD, HintText;
  final int Number_of_Characters;
  final TextInputType Text_Type;
  final double TextFormFiledWidth, AnyBorder;
  MyTextFormField(
      {this.DDD = '(86) ',
      this.Number_of_Characters = 1000000,
      this.Text_Type = TextInputType.text,
      this.TextFormFiledWidth = double.infinity,
      this.HintText = '',
      this.AnyBorder = 10,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: TextFormFiledWidth,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.bottom,
        obscureText: false,
        maxLength: Number_of_Characters,
        keyboardType: Text_Type,
        decoration: InputDecoration(
          hintStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.grey[550]),
          hintText: HintText,
          fillColor: Colors.green[100],
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AnyBorder)),
          prefixText: DDD,
          prefixStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          counterText: '',
        ),
      ),
    );
  }
}
