import 'dart:html';

import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({Key? key}) : super(key: key);
  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool _is_selected = false;
  late String jooj;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(
                () {
                  _is_selected = !_is_selected;
                },
              );
            },
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: _is_selected ? Colors.black38 : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey,
                    spreadRadius: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          //Text(widget.label_text,
          //  style: TextStyle(fontSize: 19),),
        ],
      ),
    );
  }
}


//alimentos