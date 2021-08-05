import 'package:flutter/material.dart';

//apenas o botão Próximo

class Botaoazul extends StatelessWidget {
  const Botaoazul({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(8.0),
        height: 50.0,
        width: 100.0,
        decoration: BoxDecoration(
          border: Border.all(width: 0),
          borderRadius: const BorderRadius.all(const Radius.circular(10)),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xff1565c0),
                Color(0xff6dd5fa),
              ]),
        ),
        child: Row(
          children: [
            Icon(
              Icons.done,
              color: Colors.white,
              size: 30.0,
            ),
            Text(
              'Salvar',
              style: TextStyle(
                fontFamily: 'AGENCYR',
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
