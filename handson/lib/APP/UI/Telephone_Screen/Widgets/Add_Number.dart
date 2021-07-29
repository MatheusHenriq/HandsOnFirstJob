import 'package:flutter/material.dart';

class Add_Number extends StatelessWidget {
  const Add_Number({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.amber[50],
              border: Border.all(color: Colors.orange.shade900),
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle),
          constraints: BoxConstraints.tightFor(width: 50, height: 50),
          alignment: Alignment.center,
          child: Icon(
            Icons.add_call,
            color: Colors.deepOrangeAccent,
          ),
        ),
        onTap: () {});
  }
}