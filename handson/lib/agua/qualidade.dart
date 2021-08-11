import 'package:flutter/material.dart';
import 'outros.dart';
import 'botaoprox.dart';
import 'botaocancel.dart';

class Checkcircle extends StatefulWidget {
  const Checkcircle({Key? key}) : super(key: key);

  @override
  _CheckcircleState createState() => _CheckcircleState();
}

class _CheckcircleState extends State<Checkcircle> {
  int x = 0;
  changeValue(int y) {
    setState(() {
      x = y;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 10, 10, 0),
            child: Text(
              'Qualidade da água:',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Radio(
                    value: 1,
                    groupValue: x,
                    activeColor: Colors.lightBlue,
                    onChanged: (val) {
                      changeValue(1);
                    }),
              ),
              Text('Tratada'),
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
              Text('Poço'),
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
              Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: Text('Outros')),
              Outros(),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(320, 20, 0, 0),
            child: Row(
              children: [
                Botaocinza(),
                Botaoazul(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
