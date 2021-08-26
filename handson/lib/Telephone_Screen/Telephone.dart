import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/Add_Number.dart';
import 'Widgets/Cancel_Button.dart';
import 'Widgets/MyTextFormField.dart';
import 'Widgets/Next_Button.dart';
import 'Widgets/Observation.dart';
import 'Widgets/Text_Title.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                margin: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: (Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text_Title(
                      Text_: 'Contato Nº1:',
                    ),
                    MyTextFormField(
                      DDD: '(86) ',
                      Number_of_Characters: 9,
                      Text_Type: TextInputType.phone,
                    ),
                    SizedBox(height: 15),
                    Observation(),
                    Text_Title(
                      Text_: 'Contato Nº2:',
                    ),
                    MyTextFormField(
                        DDD: '(86) ',
                        Number_of_Characters: 9,
                        Text_Type: TextInputType.phone),
                    SizedBox(height: 15),
                    Observation(),
                    Add_Buttom(
                      Icon_: Icons.add_ic_call,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Cancel_Button(),
                        SizedBox(width: 30),
                        Next_Button(),
                      ],
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
