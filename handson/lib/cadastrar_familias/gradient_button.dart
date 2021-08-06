import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String label_text;
  final double? width;
  final double? height;
  const GradientButton(
      {Key? key, required this.label_text, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // O outro filho da linha é outro inkwell seguindo a mesma lógica do anterior
      // A diferença é que esse tem um ícone e uma cor degradê
      // Eu ainda não sei como passar uma cor degradê como parâmetro pra uma classe
      // Por isso eu ainda não fiz um widget para esses dois botões
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff288ae4),
              Color(0xff0820c0),
            ],
          ),
        ),
        child: Center(
          child: Row(
            children: [
              SizedBox(width: 11),
              Text(
                label_text,
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
    );
  }
}
