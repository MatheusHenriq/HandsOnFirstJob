import 'package:flutter/material.dart';

class Radio_Buttom extends StatefulWidget {
  const Radio_Buttom({Key? key}) : super(key: key);

  @override
  _Radio_ButtomState createState() => _Radio_ButtomState();
}

class _Radio_ButtomState extends State<Radio_Buttom> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Radio<int>(
        toggleable: true,
        value: 1,
        groupValue: selectedValue,
        activeColor: Colors.lightGreen[800],
        onChanged: (value) {
          if (selectedValue != 1) {
            setState(() => selectedValue = 1);
          } else {
            setState(() => selectedValue = 0);
          }
        },
      ),
    );
  }
}
