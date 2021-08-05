import 'package:cadastro_doacoes/app/tela_princ/bottons.dart';
import 'package:flutter/material.dart';

class CadastroDoa extends StatelessWidget {
  const CadastroDoa({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //Gradient para deixar a appbar com degradê
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.lightGreenAccent, Colors.green])),
        ),
        title: Text( //titulo na appbar
          'Cadastro de Doações',
          style: TextStyle(
            fontFamily: 'AGENCYR',
            fontSize: 28,
            fontWeight: FontWeight.w800
          ),
        ),
        actions: [ //butão de ação
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              size: 30,
            ),
            onPressed: (){},
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  height: 40,
                  width: 450,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey
                      ),
                      borderRadius: BorderRadius.circular(05)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Cadastrar Doador',
                        style: TextStyle(
                          fontSize:18,
                          fontWeight: FontWeight.w800
                        ),
                      )
                    ],
                  ),
                ),
                onTap: (){},
              )
            ],
          ),
          SizedBox(height: 16),
          Container(
            width: 450,
            height: 40,                
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Nome do Doador',
                hintStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(05)
                )
              )
            ),
          ),
          SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Bottons(icon: Icons.toys_outlined, nome: 'Brinquedos',),
              Bottons(icon: Icons.food_bank_outlined, nome: 'Alimentos')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Bottons(icon: Icons.book_outlined, nome: 'Livros',),
              Bottons(icon: Icons.wash_outlined, nome: 'Higiene',)
            ],
          ),
          Bottons(icon: Icons.hail_outlined, nome: 'Roupas e calçados'),
          //Column(
            //children: [
              SizedBox(height: 150),
              Row(
              mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Cancelar',
                              style: TextStyle(
                                fontFamily: 'AGENCYR',
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  onTap: (){},
                  ), 
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Colors.white,                                      
                                ),
                                Text(
                                  'Salvar',
                                  style: TextStyle(
                                    fontFamily: 'AGENCYR',
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    onTap: (){},
                    ),
                  )   
                ]
              ),
            //],
          //),
        ],
      ),
    );
  }
}