import 'package:flutter/material.dart';

class Outros extends StatefulWidget {
  const Outros({Key? key}) : super(key: key);

  @override
  _OutrosState createState() => _OutrosState();
}

class _OutrosState extends State<Outros> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 13.0,
          horizontal: 8.0,
        ),
        margin: EdgeInsets.symmetric(
          vertical: 0.0,
          horizontal: 0.0,
        ),
        height: 35.0,
        width: 170.0,
        decoration: BoxDecoration(
          border: Border.all(width: 0),
          borderRadius: const BorderRadius.all(const Radius.circular(10)),
          color: Colors.grey[300],
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
