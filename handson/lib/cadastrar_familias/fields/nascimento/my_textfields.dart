/* Esse é o widget de textfield que eu criei
para usar como campos de dia, mes e ano*/

import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget {
  // Essas são as variáveis que eu criei pro widget
  // Como as únicas coisas que mudam de um texfield pra outro
  // são só o hint text e a quantidade de dígitos permitida,
  // eu transformei isso em variáveis que serão passadas na chamada da função
  final String? hint_text;
  final int? quantidade_digitos;
  final int? alignCenter;
  final double? width;
  final double? heigh;
  final int? have_hintText;
  final int? have_color;
  final int? have_border;
  const MyTextForm(
      {Key? key,
      this.hint_text,
      this.quantidade_digitos,
      this.width,
      this.heigh,
      this.alignCenter = 0,
      this.have_hintText = 0,
      this.have_color = 0,
      this.have_border = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Os textfields ficaram dentro de containers invisíveis
      // Essa foi a única forma que eu achei de poder delimitar o tamanho das bordas do textfields
      // Sem esses containers os textfields ocupam a largura da tela inteira
      width: width,
      height: heigh,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 0.5,
          ),
        ],
        color: have_color == 1 ? Colors.grey.shade300 : Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: TextField(
          textAlign: alignCenter == 1 ? TextAlign.center : TextAlign.start,
          cursorColor: Colors.black,
          cursorHeight: 20,
          decoration: InputDecoration(
            counterText: "",
            hintText: have_hintText == 1 ? hint_text : '',
            // Aqui o hintText do campo recebe a variável hint_text
            focusColor: Colors.black,
            hoverColor: Colors.black,
            focusedBorder: have_border == 1
                ? UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  )
                : InputBorder.none,
            enabledBorder: have_border == 1
                ? UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  )
                : InputBorder.none,
          ),
          maxLength: quantidade_digitos,
          // maxLength é a quantidade de dígitos que são permitidos o usuário digitar
          // ela recebe a variável quantidade_digitos
        ),
      ),
    );
  }
}
