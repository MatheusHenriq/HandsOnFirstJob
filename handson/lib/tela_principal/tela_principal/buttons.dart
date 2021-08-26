import 'package:flutter/material.dart';

class ButtonsPrinc extends StatelessWidget {
  final String? texto;
  final String? imagem;
  final void Function() onTap;
  const ButtonsPrinc({this.texto, this.imagem, required this.onTap, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 50),
          child: InkWell(
            child: Container(
              width: 150,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.circular(05)
              ),
              child: Column(
                children: [
                  Image.asset(
                    imagem!,
                    height: 150,
                    width: 220,
                  ),
                  Text(
                    texto!,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'AGENCYR',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]
              ),
            ),
            onTap:(onTap) ,
          ),
        ),
      ],
    );
  }
}