import 'package:flutter/material.dart';
import 'package:handson/APP/UI/Book_Screen/Widgets/Radio_Buttom.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Add_Number.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Cancel_Button.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/MyTextFormField.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Next_Button.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Text_Titles.dart';

class Book extends StatelessWidget {
  Book({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            onPressed: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/images/backCorreto.png',
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green[800]),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 30),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Cadastro de Livros:',
                      style: TextStyle(
                          fontFamily: 'AGENCY',
                          fontSize: 40,
                          color: Colors.green[800]),
                    ),
                    Text_Title(
                      Text_: 'Nome do Livro:',
                    ),
                    MyTextFormField(
                      DDD: '',
                      Text_Type: TextInputType.name,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text_Title(
                          Text_: 'Idade Recomendada:',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            MyTextFormField(
                              DDD: '',
                              Text_Type: TextInputType.number,
                              TextFormFiledWidth: 100,
                            ),
                            Radio_Buttom(),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text_Title(
                          Text_: 'Quantidade:',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyTextFormField(
                          DDD: '',
                          Text_Type: TextInputType.number,
                          TextFormFiledWidth: 100,
                        ),
                      ],
                    ),
                    Add_Buttom(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Cancel_Button(),
                  SizedBox(width: 30),
                  Next_Button(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
