import 'package:flutter/material.dart';
import 'package:segundo_teste/Book_Screen/Widgets/Radio_Buttom.dart';
import 'package:segundo_teste/Telephone_Screen/Widgets/Add_Number.dart';
import 'package:segundo_teste/Telephone_Screen/Widgets/MyTextFormField.dart';

import 'Family_Number.dart';

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10,
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: MyTextFormField(
            DDD: '',
            Text_Type: TextInputType.name,
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          child: Family_Number(),
        ),
        Radio_Buttom(),
        Flexible(
          fit: FlexFit.loose,
          child: Add_Buttom(),
        ),
      ],
    );
  }
}
