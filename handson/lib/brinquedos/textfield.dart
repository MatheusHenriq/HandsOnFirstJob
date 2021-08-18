import 'package:flutter/material.dart';

class Nomebrinquedo extends StatelessWidget {
  const Nomebrinquedo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nome do Brinquedo:',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Material(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 13,
                horizontal: 8,
              ),
              margin: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 0,
              ),
              height: 35.0,
              width: 400.0,
              decoration: BoxDecoration(
                border: Border.all(width: 0),
                borderRadius: const BorderRadius.all(const Radius.circular(5)),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
