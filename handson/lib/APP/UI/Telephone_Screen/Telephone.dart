import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Add_Number.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Cancel_Button.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Contact_Texts.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/MyTextFormField.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Next_Button.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Observation.dart';

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
              style: TextStyle(fontFamily: 'AGENCY', fontSize: 40),
            ),
          ),
          backgroundColor: Colors.orange[300],
          leading: ElevatedButton(
            onPressed: () {},
            child: Image.asset(
              'assets/images/backCorreto.png',
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange[300]),
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Contact_Texts(
                  Contact_Number: 'Contato Nº1:',
                ),
                MyTextFormField(),
                Observation(),
                Contact_Texts(
                  Contact_Number: 'Contato Nº2:',
                ),
                MyTextFormField(),
                Observation(),
                Add_Number(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Cancel_Button(),
                    SizedBox(
                      width: 50,
                    ),
                    Next_Button(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
