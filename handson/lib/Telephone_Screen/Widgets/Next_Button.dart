import 'package:flutter/material.dart';
import 'package:segundo_teste/Book_Screen/Books.dart';


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
                Icons.done,
                size: 40,
              )
            ],
          ),
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
              color: Colors.green[400],
              border: Border.all(color: Colors.green.shade900),
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          margin: EdgeInsets.only(right: 20, bottom: 20),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Book()),
          );
        });
  }
}
