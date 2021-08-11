import 'package:cadastrar_familia/app/tela_princ/buttons.dart';
import 'package:cadastrar_familia/app/tela_princ/text.dart';
import 'package:flutter/material.dart';
//import 'package:gradient_app/gradient_app_bar.dart';

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
        backgroundColor: Colors.blue,
        title: Text(
          'Cadastrar Família',
          style: TextStyle(
            fontFamily: 'agencyr',
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
                          Buttons(icons: Icons.person, name: 'Responsável'),
                          Buttons(icons: Icons.calendar_today, name: 'Nascimento'),
                        ]
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Buttons(icons: Icons.location_on, name: 'Endereço'),
                          Buttons(icons: Icons.call, name: 'Telefone'),
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
                          Buttons(icons: Icons.house, name: 'Casa'),
                          Buttons(icons: Icons.wash_outlined, name: 'Higiene'),
                        ]
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Buttons(icons: Icons.water_damage, name: 'Água'), //whatshot
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
                          Buttons(icons: Icons.sports_handball, name: 'Saúde Física'),
                          Buttons(icons: Icons.self_improvement, name: 'Saúde Espiritual'), //psychology
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
                          Buttons(icons: Icons.group_add, name: 'Adicionar familiares'), //family_restroom, person_add_alt_1, supervised_user_circle
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
                          Buttons(icons: Icons.volunteer_activism_outlined, name: 'Necessidade'), //pan_tool_outlined, real_estate_agent_outlined
                          Buttons(icons: Icons.outgoing_mail, name: 'Encaminhar'),
                        ]
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Buttons(icons: Icons.meeting_room, name: 'Visitas'),
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
                          Buttons(icons: Icons.mode_edit, name: 'Adicionar Observação'), //note_alt
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