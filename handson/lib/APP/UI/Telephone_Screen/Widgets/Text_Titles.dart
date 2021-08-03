import 'package:flutter/material.dart';

class Text_Title extends StatelessWidget {
  final String Text_;
  Text_Title({this.Text_ = 'Contato Nº1:', Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          Text_,
          style: TextStyle(
              color: Colors.green[800],
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
