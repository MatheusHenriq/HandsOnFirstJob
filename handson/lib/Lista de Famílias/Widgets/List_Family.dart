import 'package:flutter/material.dart';
import 'package:segundo_teste/Book_Screen/Widgets/Radio_Buttom.dart';
import 'package:segundo_teste/Telephone_Screen/Widgets/Add_Number.dart';
import 'package:segundo_teste/Telephone_Screen/Widgets/Cancel_Button.dart';
import 'package:segundo_teste/Telephone_Screen/Widgets/MyTextFormField.dart';
import 'package:segundo_teste/Telephone_Screen/Widgets/Next_Button.dart';

import 'Family_Number.dart';

class List_Family extends StatelessWidget {
  const List_Family({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 1200,
          height: 1100,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.green[800],
                title: Text(
                  'Lista de Famílias',
                  style: TextStyle(
                      fontFamily: 'AGENCY',
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                leading: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/images/backCorreto.png',
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.green[800]),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 20, right: 30, bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      MyTextFormField(
                        DDD: '',
                        Text_Type: TextInputType.name,
                      ),
                    ]),
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[350],
                      ),
                      child: GridView.count(
                        mainAxisSpacing: 0.0,
                        crossAxisSpacing: 10,
                        crossAxisCount: 3,
                        children: [
                          MyTextFormField(
                            DDD: '',
                            Text_Type: TextInputType.name,
                          ),
                          Family_Number(),
                          Radio_Buttom(),
                        ],
                      ),
                    ),
                    Add_Buttom(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Cancel_Button(),
                        SizedBox(
                          width: 20,
                        ),
                        Next_Button()
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
