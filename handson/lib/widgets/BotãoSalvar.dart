import 'package:flutter/material.dart';

class BotaoSalvar extends StatelessWidget {
  final String? proximo;
  const BotaoSalvar({Key? key, this.proximo}) : super(key: key);

// Widget: Representa um botão escrito "próximo".
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 125,
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Salvar',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'AGENCYR',
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.done,
              color: Colors.white,
              size: 36,
            ),
          ],
        ),
      ),
    );
  }
}
