import 'package:flutter/material.dart';

class Text_Title extends StatelessWidget {
  final String Text_;
  final AlignmentGeometry Alignment_;
  final double FontSize;
  Text_Title(
      {this.Text_ = 'Contato Nº1:',
      this.Alignment_ = Alignment.centerLeft,
      this.FontSize = 20,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Align(
        alignment: Alignment_,
        child: Text(
          Text_,
          style: TextStyle(
              color: Colors.green[800],
              fontSize: FontSize,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
