import 'package:flutter/material.dart';

class BotaoMF extends StatefulWidget {
  const BotaoMF({Key? key}) : super(key: key);

  @override
  State<BotaoMF> createState() => _BotaoMFState();
}

class _BotaoMFState extends State<BotaoMF> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RadioListTile(
            value: 1,
            groupValue: _value,
            onChanged: (val) {
              setState(() {
                _value = 1;
              });
            },
            activeColor: Colors.black,
            title: Text(
              'Masc.',
              style: TextStyle(fontSize: 15),
            )),
        RadioListTile(
            value: 2,
            groupValue: _value,
            onChanged: (val) {
              setState(() {
                _value = 2;
              });
            },
            activeColor: Colors.grey,
            title: Text(
              'Fem.',
              style: TextStyle(fontSize: 15),
            )),
      ],
    );
  }
}
