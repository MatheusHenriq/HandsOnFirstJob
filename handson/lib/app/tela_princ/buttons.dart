import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String? name;
  final IconData icons;
  const Buttons({this.name, @required this.icons = Icons.favorite, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InkWell(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          child: Container(
            width: 210,
            height: 40,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icons,
                  color: Colors.black,
                  size: 20,
                ),
                SizedBox(width: 7),
                Text(name!,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    )),
              ],
            )),
          ),
        ),
        onTap: () {},
      ),
    ]);
  }
}
