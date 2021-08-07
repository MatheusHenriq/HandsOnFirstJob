import 'package:flutter/material.dart';
import 'package:nome_aba/widgets/Tela_Higiene.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aba Higiene',
        debugShowCheckedModeBanner: false,
        home: AbaHigiene());
  }
}
