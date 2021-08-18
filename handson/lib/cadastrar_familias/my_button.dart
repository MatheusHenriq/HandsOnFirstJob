import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? button_color;
  final String label_text;
  const MyButton(
      {Key? key,
      this.width,
      this.height,
      this.button_color,
      required this.label_text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      color: button_color,
      borderRadius: BorderRadius.circular(3),
      boxShadow: [
        BoxShadow(
          color: Colors.blueGrey.withOpacity(0.5),
          spreadRadius: 1,
        ),
      ],
    );
    return Material(
      child: InkWell(
        // O primeiro filho da linha é um inkwell
        // que tem como filho um container que tem como filho um texto
        // Esse é o botão de cancelar
        onTap: () {},
        child: Container(
          width: width,
          height: height,
          decoration: boxDecoration,
          child: Center(
            child: Text(
              label_text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Agency',
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
