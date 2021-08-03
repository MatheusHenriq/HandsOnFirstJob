import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Add_Number.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Cancel_Button.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Text_Titles.dart';
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
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text_Title(
                  Text_: 'Contato Nº1:',
                ),
                MyTextFormField(
                  DDD: '(86) ',
                  Number_of_Characters: 9,
                ),
                Observation(),
                Text_Title(
                  Text_: 'Contato Nº2:',
                ),
                MyTextFormField(
                  DDD: '(86) ',
                  Number_of_Characters: 9,
                ),
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
