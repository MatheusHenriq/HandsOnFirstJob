/*
  Esse widget é responsável pelo campo de preencher a data de nascimento.
  é ele que vai ser chamado na tela de cadastrar famílias.
 */

import 'dart:ui';
import 'package:flutter/material.dart';
import '../container_bar.dart';
import 'my_textfields.dart';

class BornField extends StatelessWidget {
  const BornField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          // Esse é o container principal da tela, todos os outros widgets vão ficar dentro dele
          width: 550,
          height: 300,
          decoration: BoxDecoration(
            // No boxdecoration eu defino a sombra do container e sua borda circular
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
            // O filho do container principal é uma coluna.
            // como os campos na tela são mostrados de cima pra baixo, cada novo filho dessa coluna ficará em baixo
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerBar(
                label_text: 'Data de Nascimento',
                bar_icon: Icons.arrow_back,
              ),
              //
              //
              //
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  // O segundo filho da coluna é esse texto
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
                  // Essa linha é o terceiro filho da coluna.
                  // É nela que vão ficar os campos de dia, mês e ano
                  children: [
                    // Os próximos filhos dessa linha são chamando o widget que eu criei "MyTextForm"
                    // Eu comento sobre ele na página do widget
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
                // Aqui termina o terceiro filho da coluna principal
                //
                //
                //
              ),
              SizedBox(
                height: 70,
                // Eu fiz esse sizedbox com altura de 70 pixels porque o póximo filho dessa coluna fica no canto inferior direito
              ),
              Row(
                // Essa outra linha é o quarto e último filho da coluna principal
                // É nela que vão ficar  os dois botões que ficam no canto inferior esquerdo
                //
                mainAxisAlignment: MainAxisAlignment.end,
                // Como o sizedbox anterior deixa essa linha lá em baixo do container principal,
                // esse mainAxisAlignment move ela pro lado direito
                // fazendo assim com que ela fique no canto inferior direito
                children: [
                  InkWell(
                    // O primeiro filho da linha é um inkwell
                    // que tem como filho um container que tem como filho um texto
                    // Esse é o botão de cancelar
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
                  // Fim do primeiro botão
                  //
                  //
                  SizedBox(width: 6),
                  InkWell(
                    // O outro filho da linha é outro inkwell seguindo a mesma lógica do anterior
                    // A diferença é que esse tem um ícone e uma cor degradê
                    // Eu ainda não sei como passar uma cor degradê como parâmetro pra uma classe
                    // Por isso eu ainda não fiz um widget para esses dois botões
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
        //
        // Aque termina o container principal
        //
        //
      ),
    );
  }
}
