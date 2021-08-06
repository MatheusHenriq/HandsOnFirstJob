import 'package:flutter/material.dart';

class ContainerBar extends StatelessWidget {
  final IconData? bar_icon;
  final String label_text;
  const ContainerBar({Key? key, this.bar_icon, required this.label_text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        // O primeiro filho dessa coluna é esse container.
        // A função desse container é servir como barra
        //(eu preferi usar um container ao invez do appbar por sermais versátil)
        height: 56,
        width: 550,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            // Aqui eu defino as bordas circulares desse novo container
            // Mas ao contrário do container principal que tem todas as bordas circulares,
            // eu fiz esse ter apenas as bordas dos cantos superiores como circulares.
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          gradient: LinearGradient(
            // Aqui eu defino o degradê da barra
            // Isso foi o mais próximo que eu consegui deixar do design que o Mendes fez
            // Se alguem tiver achado umas cores mais parecidas, podem editar aí
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff288ae4),
              Color(0xff0820c0),
            ],
          ),
        ),
        child: Row(
          // Essa linha é a filha do container da barra
          // Como eu coloquei mais de um widget na barra, eu usei uma linha pra ficarem um do lado do outro
          children: [
            SizedBox(
              width: 10,
            ),
            InkWell(
              // O primeiro filho da linha é esse inkwell de cor branca e em formato circular
              // É dentro dele que vai ficar o ícone da seta de voltar
              onTap: () => {},
              splashFactory: InkRipple.splashFactory,
              splashColor: Colors.black,
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  // Esse ícone de voltar é o filho do inkwell
                  bar_icon,
                  //Icons.arrow_back,
                  color: Colors.blue[700],
                  size: 30,
                ),
              ),
            ),
            SizedBox(
              // esse sized box é apenas pra dar um espaçamento entre o ícone e o próximo filho da linha
              width: 125,
            ),
            Text(
              // Esse é o segundo filho da linha
              // É o texto que fica no meio da barra
              label_text,
              //'Data de Nascimento',
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.white,
                fontFamily: 'Agency',
              ),
            ),
          ],
        ),
      ),
    );
    // Esse é o fim do container da barra, o primeiro filho da coluna
  }
}
