import 'package:flutter/material.dart';

class PagNula extends StatelessWidget {
  const PagNula({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'VIXE',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 700,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey
            ) 
          ),
          child: Center(
            child: Text(
              'PÁGINA NÃO ENCONTRADA',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
          ),
        ),
      )
    );
  }
}