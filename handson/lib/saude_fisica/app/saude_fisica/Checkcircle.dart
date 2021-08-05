import 'package:flutter/material.dart';
import 'Textfield.dart';

//codigo dos radiobuttons

class CheckCircle extends StatefulWidget {
  const CheckCircle({Key? key}) : super(key: key);

  @override
  _CheckCircleState createState() => _CheckCircleState();
}

class _CheckCircleState extends State<CheckCircle> {
  int x = 0;
  changeValue(int y) {
    setState(() {
      x = y;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(30, 10, 10, 0),
          child: Text(
            'Nível de saúde física:',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Row(
            children: [
              Radio(
                  value: 1,
                  groupValue: x,
                  activeColor: Colors.lightBlue,
                  onChanged: (val) {
                    changeValue(1);
                  }),
              Text('Boa'),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Radio(
                    value: 2,
                    groupValue: x,
                    activeColor: Colors.lightBlue,
                    onChanged: (val) {
                      changeValue(2);
                    }),
              ),
              Text('Regular'),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Radio(
                    value: 3,
                    groupValue: x,
                    activeColor: Colors.lightBlue,
                    onChanged: (val) {
                      changeValue(3);
                    }),
              ),
              Text('Ruim'),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Radio(
                    value: 4,
                    groupValue: x,
                    activeColor: Colors.lightBlue,
                    onChanged: (val) {
                      changeValue(4);
                    }),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: Text('Outros')),
              Outros(),
            ],
          ),
        )
      ],
    );
  }
}
