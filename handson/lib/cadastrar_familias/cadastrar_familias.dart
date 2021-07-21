import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:handson/cadastrar_familias/button.dart';
import 'package:handson/cadastrar_familias/fields/nascimento/born_field.dart';

class CadastrarFamilias extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          width: 300,
          height: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
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
            children: [
              Container(
                width: 300,
                height: 40,
                color: Colors.blue[700],
                // decoration: BoxDecoration(
                //   color: Colors.blue[700],
                //   borderRadius: BorderRadius.only(topLeft: 20.0),
              ),
              Text(
                'IDENTIFICAÇÃO',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 160,
                  ),
                  // AQUI SÃO CHAMADOS OS BOTÕES
                  Button(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BornField(),
                        ),
                      );
                    },
                    botaoNome: 'Nascimento',
                    botaoIcone: Icons.calendar_today,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
