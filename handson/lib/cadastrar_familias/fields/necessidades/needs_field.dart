import 'package:flutter/material.dart';
import 'package:segundo_teste/cadastrar_familias/fields/container_bar.dart';
import 'package:segundo_teste/cadastrar_familias/fields/nascimento/my_textfields.dart';
import 'package:segundo_teste/cadastrar_familias/fields/necessidades/my_checkbox.dart';
import 'package:segundo_teste/cadastrar_familias/fields/necessidades/texto.dart';
import 'package:segundo_teste/cadastrar_familias/gradient_button.dart';
import 'package:segundo_teste/cadastrar_familias/my_button.dart';

class NeedsField extends StatelessWidget {
  const NeedsField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          width: 550,
          height: 300,
          decoration: BoxDecoration(
            // No boxdecoration eu defino a sombra do container e sua borda circular
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey.withOpacity(0.7),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerBar(
                label_text: '     Necessidades',
                bar_icon: Icons.arrow_back,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  // O segundo filho da coluna é esse texto
                  'O que estão necessitanto:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    MyCheckBox(),
                    Texto(texto: 'Alimento'),
                    SizedBox(width: 15),
                    MyCheckBox(),
                    Texto(texto: 'Vestuário'),
                    SizedBox(width: 15),
                    MyCheckBox(),
                    Texto(texto: 'Calçado'),
                    SizedBox(width: 15),
                    MyCheckBox(),
                    Texto(texto: 'Emprego'),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    MyCheckBox(),
                    Texto(texto: 'Médico'),
                    SizedBox(width: 25),
                    Texto(texto: 'Outros:   '),
                    MyTextForm(
                      have_color: 1,
                      width: 260,
                      heigh: 30,
                      quantidade_digitos: 100,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    label_text: 'Cancelar',
                    button_color: Colors.white,
                    width: 70,
                    height: 23,
                  ),
                  SizedBox(width: 6),
                  GradientButton(label_text: 'Próximo', width: 95, height: 32),
                  SizedBox(width: 15),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
