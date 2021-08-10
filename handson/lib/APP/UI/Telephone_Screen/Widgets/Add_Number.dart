import 'package:flutter/material.dart';

class Add_Buttom extends StatelessWidget {
  Add_Buttom({this.Icon_ = Icons.add, Key? key});
  final IconData Icon_;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          margin: EdgeInsets.only(top: 40),
          decoration: BoxDecoration(
              color: Colors.green[100],
              border: Border.all(color: Colors.green.shade900),
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle),
          constraints: BoxConstraints.tightFor(width: 50, height: 50),
          alignment: Alignment.center,
          child: Icon(
            Icon_,
            color: Colors.green[900],
            size: 25,
          ),
        ),
        onTap: () {});
  }
}
