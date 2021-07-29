import 'package:flutter/material.dart';

class Next_Button extends StatelessWidget {
  const Next_Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          child: Row(
            children: [
              Text(
                'Próximo',
                style: TextStyle(fontFamily: 'AGENCY', fontSize: 25),
                textAlign: TextAlign.center,
              ),
              Icon(
                Icons.check,
                size: 40,
              )
            ],
          ),
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
              color: Colors.amber[500],
              border: Border.all(color: Colors.orange.shade900),
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        ),
        onTap: () {});
  }
}
