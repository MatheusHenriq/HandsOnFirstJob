import 'package:flutter/material.dart';
import 'package:segundo_teste/Desconhecido/nulo.dart';
import 'package:segundo_teste/Telephone_Screen/Telephone.dart';
import 'package:segundo_teste/agua/scaffold.dart';
import 'package:segundo_teste/cadastrar_familia/tela_princ/buttons.dart';
import 'package:segundo_teste/cadastrar_familia/tela_princ/text.dart';
import 'package:segundo_teste/casa/scaffold.dart';
import 'package:segundo_teste/saude_espiritual/saude_espiritual.dart';
import 'package:segundo_teste/saude_fisica/app/saude_fisica/saude_fisica.dart';
import 'package:segundo_teste/visita/Visita.dart';

class TelaF extends StatelessWidget {

  const TelaF({ Key? key }) : super(key: key);

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
        backgroundColor: Colors.blue,
        title: Text(
          'Cadastrar Família',
          style: TextStyle(
            fontFamily: 'AGENCYB',
            fontSize:28,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          IconButton(icon: Icon(
            Icons.arrow_forward,
            size: 30,
            ),
          onPressed: (){},
          ),
        ]
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Texts(text: 'IDENTIFICAÇÃO'),
                ),
                Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Buttons(icons: Icons.person, name: 'Responsável', onTap:(){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => PagNula()));
                          }),
                          Buttons(icons: Icons.calendar_today, name: 'Nascimento', onTap:(){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => PagNula()));
                          }),
                        ]
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Buttons(icons: Icons.location_on, name: 'Endereço', onTap:(){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => PagNula()));
                          }),
                          Buttons(icons: Icons.call, name: 'Telefone', onTap:(){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Telephone()));
                          }),
                        ]
                      ),
                    ),
                  ],
                ),
                Texts(text: 'HABITAÇÃO'),
                Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Buttons(icons: Icons.house, name: 'Casa', onTap:(){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Casa()));
                          }),
                          Buttons(icons: Icons.wash_outlined, name: 'Higiene', onTap:(){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => PagNula()));
                          }),
                        ]
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Buttons(icons: Icons.water_damage, name: 'Água', onTap:(){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Agua()));
                          }), //whatshot
                        ]
                      ),
                    ),
                  ],
                ),
                Texts(text: 'CONDIÇÕES DE SAÚDE'),
                Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Buttons(icons: Icons.sports_handball, name: 'Saúde Física', onTap:(){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SaudeFisica()));
                          }),
                          Buttons(icons: Icons.self_improvement, name: 'Saúde Espiritual', onTap:(){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SaudeEspiritual()));
                          }), //psychology
                        ]
                      ),
                    ),
                  ]
                ),
                Texts(text: 'DEPENDENTES'),
                Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Buttons(icons: Icons.group_add, name: 'Adicionar familiares', onTap:(){}), //family_restroom, person_add_alt_1, supervised_user_circle
                        ]
                      ),
                    ),
                  ]
                ),
                Texts(text: 'ACOMPANHAMENTO'),
                Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Buttons(icons: Icons.volunteer_activism_outlined, name: 'Necessidade', onTap:(){}), //pan_tool_outlined, real_estate_agent_outlined
                          Buttons(icons: Icons.outgoing_mail, name: 'Encaminhar', onTap:(){}),
                        ]
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Buttons(icons: Icons.meeting_room, name: 'Visitas', onTap:(){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Visita()));
                          }),
                        ]
                      ),
                    ),
                  ],
                ),
                Texts(text: 'OBSERVAÇÕES'),
                Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Buttons(icons: Icons.mode_edit, name: 'Adicionar Observação', onTap:(){}), //note_alt
                        ]
                      ),
                    ),
                  ]
                ),
                Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [ 
                          Texts(text: 'DATA'),
                        ]
                      ),
                    ),
                  ]
                ),
                Center(
                  child: IconButton(
                    icon: Icon(Icons.date_range),
                    onPressed: () async {
                      final data = await showDatePicker(context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2001),
                      lastDate: DateTime(2021),
                      locale: Locale ('pt', 'BR')
                    );
                    },
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.black
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Cancelar',
                                      style: TextStyle(
                                        fontFamily: 'agencyr',
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          onTap: (){},
                        ), 
                        InkWell(
                          child: Row(
                            children: [
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.green,
                                ),
                                child: Center(
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
                                          fontFamily: 'agencyr',
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          onTap: (){},
                        )   
                      ]
                    ),
                  ],
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}