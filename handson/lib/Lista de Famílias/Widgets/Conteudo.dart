import 'package:flutter/material.dart';
import 'package:segundo_teste/Book_Screen/Widgets/Radio_Buttom.dart';
import 'Family_Number.dart';
import 'MyTextFormField.dart';

class Conteudo extends StatelessWidget {
  const Conteudo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            child: MyTextFormField(
          DDD: '',
          AnyBorder: 0,
        )),
        Family_Number(),
        Radio_Buttom(),
      ],
    );
  }
}
