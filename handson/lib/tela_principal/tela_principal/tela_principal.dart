import 'package:flutter/material.dart';
import 'package:segundo_teste/Desconhecido/nulo.dart';
import 'package:segundo_teste/cadastrar_familia/tela_princ/tela.dart';
import 'package:segundo_teste/cadastro_doa%C3%A7%C3%B5es/tela_princ/cadastro_doa.dart';
import 'package:segundo_teste/tela_principal/tela_principal/buttons.dart';

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
              ButtonsPrinc(imagem: 'assets/images/cadastrar_familia.PNG', texto: 'Cadastrar Família', onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaF()));
                },
              ),
              ButtonsPrinc(imagem: 'assets/images/cadastrar_doacoes.PNG', texto: 'Cadastrar doações', onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CadastroDoa()));
                }
              ),
              ButtonsPrinc(imagem: 'assets/images/lista_de_familias.PNG', texto: 'Lista de Famílias', onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PagNula()));
                }
              ),
              ButtonsPrinc(imagem: 'assets/images/lista_de_doacoes.PNG', texto: 'Lista de doações', onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PagNula()));
                }
              )
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
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaF()));
                },
              ),
            ],
          ) ,        
        ],
      ), 
    );
  }
}