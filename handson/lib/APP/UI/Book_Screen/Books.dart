import 'dart:html';

import 'package:flutter/material.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Add_Number.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/MyTextFormField.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Text_Titles.dart';

class Book extends StatelessWidget {
  Book({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Livros',
            style: TextStyle(fontFamily: 'AGENCY', fontSize: 40),
          ),
        ),
        backgroundColor: Colors.green[800],
        leading: ElevatedButton(
          onPressed: () {},
          child: Image.asset(
            'assets/images/backCorreto.png',
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green[800]),
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: Colors.grey[350],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Cadastro de Livros',
                    style: TextStyle(
                        fontFamily: 'AGENCY',
                        fontSize: 40,
                        color: Colors.green[800]),
                  ),
                  Text_Title(Text_: 'Nome do Livro:'),
                  MyTextFormField(
                    DDD: '',
                  ),
                  Row(children: [
                    Text_Title(
                      Text_: 'Idade Recomendada:',
                    ),
                    Column(
                      children: [],
                    ),
                  ]),
                  Row(
                    children: [
                      Text_Title(
                        Text_: 'Quantidade:',
                      ),
                    ],
                  ),
                  Add_Number(),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Cadastro de Doador',
                    style: TextStyle(
                        fontFamily: 'AGENCY',
                        fontSize: 40,
                        color: Colors.green[800]),
                  ),
                  Text_Title(
                    Text_: 'Nome do Doador:',
                  ),
                  MyTextFormField(
                    DDD: '',
                  ),
                  Text_Title(
                    Text_: 'Telefone Para Contato:',
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        MyTextFormField(
                          Number_of_Characters: 9,
                        ),
                        Add_Number()
                      ]),
                  Text_Title(
                    Text_: 'Observações:',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
