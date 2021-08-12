import 'package:flutter/material.dart';

class IdadeRec extends StatefulWidget {
  const IdadeRec({Key? key}) : super(key: key);

  @override
  _IdadeRecState createState() => _IdadeRecState();
}

class _IdadeRecState extends State<IdadeRec> {
  int x = 0;
  changeValue(int y) {
    setState(() {
      x = y;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
            child: Text(
              'Idade Recomendada:',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Material(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 13,
                    horizontal: 8,
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 0,
                  ),
                  height: 35.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(5)),
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Radio(
                      value: 1,
                      groupValue: x,
                      activeColor: Colors.lightBlue,
                      onChanged: (val) {
                        changeValue(1);
                      }),
                  Text('Não possui'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
