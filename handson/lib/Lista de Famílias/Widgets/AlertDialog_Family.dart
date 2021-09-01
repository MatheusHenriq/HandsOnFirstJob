import 'package:flutter/material.dart';
import 'package:segundo_teste/Telephone_Screen/Widgets/Cancel_Button.dart';
import 'package:segundo_teste/Telephone_Screen/Widgets/MyTextFormField.dart';
import 'package:segundo_teste/Telephone_Screen/Widgets/Next_Button.dart';
import 'MyDropDownButton.dart';
import 'MyGridView.dart';

class AlertDialog_Family extends StatelessWidget {
  const AlertDialog_Family({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 200, vertical: 50),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
                    'images/backCorreto.png',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: MyTextFormField(
                            DDD: '',
                            Text_Type: TextInputType.name,
                            HintText: 'Insira o nome do responsável',
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(child: MyDropDownButton()),
                      ],
                    ),
                    MyGridView(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Cancel_Button(),
                  SizedBox(
                    width: 20,
                  ),
                  Next_Button(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
