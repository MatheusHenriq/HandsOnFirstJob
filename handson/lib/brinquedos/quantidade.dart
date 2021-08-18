import 'package:flutter/material.dart';

class Quantidade extends StatelessWidget {
  const Quantidade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
            child: Text(
              'Quantidade:',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Material(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 13,
                    horizontal: 8,
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 0,
                  ),
                  height: 35.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(5)),
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
