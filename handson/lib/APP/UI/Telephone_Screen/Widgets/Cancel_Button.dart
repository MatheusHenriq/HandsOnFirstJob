import 'package:flutter/material.dart';

class Cancel_Button extends StatelessWidget {
  const Cancel_Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Text(
          'Cancelar',
          style: TextStyle(fontFamily: 'AGENCY', fontSize: 20),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
            color: Colors.amber[50],
            border: Border.all(color: Colors.orange.shade900),
            borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
