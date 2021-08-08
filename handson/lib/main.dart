import 'package:flutter/material.dart';
import 'package:nome_aba/widgets/Tela_Familiares.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aba Familia',
        debugShowCheckedModeBanner: false,
        home: AbaFamilia());
  }
}
