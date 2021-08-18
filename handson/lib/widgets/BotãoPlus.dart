import 'package:flutter/material.dart';

class BotaoPlus extends StatelessWidget {
  const BotaoPlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 25,
        height: 28,
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Image.asset('assets/images/plus2.png'),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
