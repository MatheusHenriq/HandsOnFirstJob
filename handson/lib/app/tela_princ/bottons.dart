import 'package:flutter/material.dart';

class Bottons extends StatelessWidget {
  final String? nome;
  final IconData icon;
  const Bottons({this.nome, @required this.icon = Icons.favorite, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
            child: Container(
              height: 50,
              width: 210,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey
                ),
                borderRadius: BorderRadius.circular(05)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: Colors.black,
                    size: 21,
                  ),
                  SizedBox(width: 8),
                  Text(
                    nome!,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w800
                    ),
                  )
                ]
              ),
            ),
          ),
          onTap: (){},
        )
      ]     
    );
  }
}