import 'package:flutter/material.dart';
import 'Widgets/AlertDialog_Family.dart';

class Bottom_List extends StatelessWidget {
  const Bottom_List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('images/Fundo.jpg'),
          InkWell(
            child: Container(
              child: Image.asset('images/ListaBotao.png'),
              decoration: BoxDecoration(),
            ),
            onTap: () {
              showDialog(
                  context: context, builder: (context) => AlertDialog_Family());
            },
          ),
        ],
      ),
    );
  }
}
