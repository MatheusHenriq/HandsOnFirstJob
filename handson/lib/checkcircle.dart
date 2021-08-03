import 'package:flutter/material.dart';
import 'package:segundo_teste/Botaoazul.dart';
import 'package:segundo_teste/Botaocinza.dart';
import 'package:segundo_teste/outros.dart';

//adiciona os campos para marcar a situação e o tamanho da casa
//e chama os 2 botões, cancelar e próximo

class Checkcircle extends StatefulWidget {
  const Checkcircle({
    Key? key,
  }) : super(key: key);

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

  int z = 0;
  changeValue2(int y) {
    setState(() {
      z = y;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 10, 0),
            child: Text(
              'Situação da casa:',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 0.0,
              horizontal: 10.0,
            ),
            child: Row(
              children: [
                Radio(
                    value: 1,
                    groupValue: x,
                    activeColor: Colors.lightBlue,
                    onChanged: (val) {
                      changeValue(1);
                    }),
                Text('Própria'),
                Radio(
                    value: 2,
                    groupValue: x,
                    activeColor: Colors.lightBlue,
                    onChanged: (val) {
                      changeValue(2);
                    }),
                Text('Aluguél'),
                Radio(
                    value: 3,
                    groupValue: x,
                    activeColor: Colors.lightBlue,
                    onChanged: (val) {
                      changeValue(3);
                    }),
                Text('Cedida'),
                Radio(
                    value: 4,
                    groupValue: x,
                    activeColor: Colors.lightBlue,
                    onChanged: (val) {
                      changeValue(4);
                    }),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: Text('Outros')),
                Outros()
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 10, 0),
            child: Text(
              'Tamanho da casa:',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 00.0,
              horizontal: 10.0,
            ),
            child: Row(
              children: [
                Radio(
                    value: 1,
                    groupValue: z,
                    activeColor: Colors.lightBlue,
                    onChanged: (val) {
                      changeValue2(1);
                    }),
                Text('Grande'),
                Radio(
                    value: 2,
                    groupValue: z,
                    activeColor: Colors.lightBlue,
                    onChanged: (val) {
                      changeValue2(2);
                    }),
                Text('Média'),
                Radio(
                    value: 3,
                    groupValue: z,
                    activeColor: Colors.lightBlue,
                    onChanged: (val) {
                      changeValue2(3);
                    }),
                Text('Pequena'),
                Radio(
                    value: 4,
                    groupValue: z,
                    activeColor: Colors.lightBlue,
                    onChanged: (val) {
                      changeValue2(4);
                    }),
                Text('Inadequada'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 320.0,
              vertical: 00.0,
            ),
            child: Row(
              children: [
                Botaocinza(),
                Botaoazul(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
