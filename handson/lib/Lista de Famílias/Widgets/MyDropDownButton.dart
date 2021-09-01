import 'package:flutter/material.dart';

class MyDropDownButton extends StatefulWidget {
  MyDropDownButton({
    Key? key,
  }) : super(key: key);
  @override
  _MyDropDownButtonState createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  static const listItem = <String>[
    'Comorbidade',
    'Poucos Membros',
    'Muitos Membros',
    'Situação Crítica'
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = listItem
      .map((String value) => DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          ))
      .toList();

  String? _btnSelectedVal;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Row(
        children: [
          Text('Filtrar'),
          Icon(
            Icons.filter_alt_sharp,
            color: Colors.green[800],
          ),
        ],
      ),
      dropdownColor: Colors.green[800],
      icon: Icon(
        Icons.arrow_drop_down,
      ),
      iconSize: 36,
      style: TextStyle(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      isExpanded: true,
      value: _btnSelectedVal,
      onChanged: (String? newValue) {
        if (newValue != null) {
          setState(() => _btnSelectedVal = newValue);
        }
        ;
      },
      items: _dropDownMenuItems,
    );
  }
}
