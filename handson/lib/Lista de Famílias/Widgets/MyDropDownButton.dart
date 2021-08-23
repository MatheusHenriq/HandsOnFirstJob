import 'package:flutter/material.dart';

class MyDropDownButton extends StatefulWidget {
  MyDropDownButton({
    Key? key,
  }) : super(key: key);
  @override
  _MyDropDownButtonState createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  Object? valueChoose;
  List listItem = [
    "Comorbidade",
    "Poucos Membros",
    "Muitos Membros",
    "Situação Crítica"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: DropdownButton(
          hint: Text('Filtrar'),
          dropdownColor: Colors.green[800],
          icon: Icon(
            Icons.arrow_drop_down,
          ),
          iconSize: 36,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
          isExpanded: true,
          value: valueChoose,
          onChanged: (newValue) {
            setState(() {
              valueChoose = newValue;
            });
          },
          items: listItem.map((valueItem) {
            return DropdownMenuItem(
              value: valueItem,
              child: Text(valueItem),
            );
          }).toList(),
        ),
      ),
    );
  }
}
