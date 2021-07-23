import 'package:flutter/material.dart';

class BotaoProximo extends StatelessWidget {
  final String? proximo;
  const BotaoProximo({Key? key, this.proximo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 120,
        right: 120,
        top: 0,
        bottom: 20,
      ),
      child: InkWell(
        child: Container(
          width: double.infinity,
          height: 45,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              'Próximo',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
