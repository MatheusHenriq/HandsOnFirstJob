import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Add_Number.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Cancel_Button.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Contact_Texts.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/MyTextFormField.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Next_Button.dart';

class Telephone extends StatelessWidget {
  Telephone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Telefone',
              style: TextStyle(fontFamily: 'AGENCYR', fontSize: 40),
            ),
          ),
          backgroundColor: Colors.orange[300],
          leading: ElevatedButton(
            onPressed: () {},
            child: Image.asset(
              'assets/images/back.png',
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange[300]),
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: <Widget>[
                Contact_Texts(
                  Contact_Number: 'Número Nº1:',
                ),
                MyTextFormField(),
                Contact_Texts(
                  Contact_Number: 'Número Nº2:',
                ),
                MyTextFormField(),
                Add_Number(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
                    children: [
                      Cancel_Button(),
                      Nex_Button(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
