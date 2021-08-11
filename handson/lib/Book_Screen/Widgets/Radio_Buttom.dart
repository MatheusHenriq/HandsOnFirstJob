import 'package:flutter/material.dart';

class Radio_Buttom extends StatefulWidget {
  const Radio_Buttom({Key? key}) : super(key: key);

  @override
  _Radio_ButtomState createState() => _Radio_ButtomState();
}

class _Radio_ButtomState extends State<Radio_Buttom> {
  int x = 0;
  changeValue(int y) {
    setState(() {
      x = y;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        child: Radio(
            toggleable: true,
            value: x,
            groupValue: x,
            activeColor: Colors.lightGreen[800],
            onChanged: (int? val) {
              setState(() {
                changeValue(val!);
              });
            }),
      ),
      Container(
        child: Text(
          'Não Possui',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ]);
  }
}
