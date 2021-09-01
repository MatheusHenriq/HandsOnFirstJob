import 'package:flutter/material.dart';

import 'buttons.dart';


class TelaPrinc extends StatelessWidget {
  const TelaPrinc({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.lightGreenAccent, Colors.green])),
        ),
        leading: (
          IconButton(
            icon: Icon(
              Icons.search
            ),
            onPressed: (){},
          )
        ),
        actions: [          
          IconButton(
            icon: Icon(
              Icons.account_circle,
              size: 30,
            ),
            onPressed: (){},
          ),
          SizedBox(width: 7,),
          Center(
            child: Text(
              'Usuário',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'AGENCYR',
                fontWeight: FontWeight.w600
              ),
            ),
          ),
        ]
      ),
      body: Column(
        children: [
          SizedBox(height: 150),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonsPrinc(imagem: 'assets/images/cadastrar_familia.PNG', texto: 'Cadastrar Família'),
              ButtonsPrinc(imagem: 'assets/images/cadastrar_doacoes.PNG', texto: 'Cadrastar doações'),
              ButtonsPrinc(imagem: 'assets/images/lista_de_familias.PNG', texto: 'Lista de Famílias'),
              ButtonsPrinc(imagem: 'assets/images/lista_de_doacoes.PNG', texto: 'Lista de doações')
            ],
          ),
          SizedBox(height: 180), 
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                      color: Colors.green,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check,
                          color: Colors.white,                                      
                      )
                    ],
                  ),
                ),
                onTap: (){},
              ),
            ],
          ) ,        
        ],
      ), 
    );
  }
}