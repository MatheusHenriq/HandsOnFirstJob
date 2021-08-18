import 'package:flutter/material.dart';

class BotaoFlag extends StatelessWidget {
  const BotaoFlag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          width: 25,
          height: 25,
          child: Icon(Icons.flag, color: Colors.red),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
          ),
        ));
  }
}
