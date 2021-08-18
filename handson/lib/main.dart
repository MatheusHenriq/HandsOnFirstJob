import 'package:cadastrar_familia/app/tela_princ/tela.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    MaterialApp(
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [
        Locale('pt', 'BR')
      ],
      debugShowCheckedModeBanner: false,
      title: 'cadastro_familia',
      home: TelaPrinc(),
    ),
  );

}
