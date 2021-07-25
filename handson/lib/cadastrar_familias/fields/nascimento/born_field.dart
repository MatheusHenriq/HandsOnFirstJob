import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:handson/cadastrar_familias/fields/nascimento/my_textforms.dart';

class BornField extends StatelessWidget {
  const BornField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Container(
            width: 550,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey.withOpacity(0.7),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 56,
                  width: 550,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color(0xff1565c0),
                        Color(0xff6dd5fa),
                      ],
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () => {},
                        splashFactory: InkRipple.splashFactory,
                        splashColor: Colors.black,
                        child: Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.blue[700],
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 125,
                      ),
                      Expanded(
                        child: Text(
                          'Data de Nascimento',
                          style: TextStyle(
                            fontSize: 35.0,
                            color: Colors.white,
                            fontFamily: 'Agency',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'Informe a data de nascimento:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      MyTextForm(
                        hint_text: 'Dia',
                        quantidade_digitos: 2,
                      ),
                      Text(
                        '/',
                        style: TextStyle(fontSize: 32),
                      ),
                      MyTextForm(
                        hint_text: 'Mês',
                        quantidade_digitos: 2,
                      ),
                      Text(
                        '/',
                        style: TextStyle(fontSize: 32),
                      ),
                      MyTextForm(
                        hint_text: 'Ano',
                        quantidade_digitos: 4,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 70,
                        height: 23,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey.withOpacity(0.8),
                              spreadRadius: 1.5,
                              blurRadius: 1.5,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Cancelar',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Agency',
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 6),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 95,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(0xff1565c0),
                              Color(0xff6dd5fa),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              SizedBox(width: 11),
                              Text(
                                'Próximo',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Agency',
                                ),
                              ),
                              Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 23,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
