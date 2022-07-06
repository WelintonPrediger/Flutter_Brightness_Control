import 'package:ex_control_brightness/app/modules/home/_export_files.dart';
import 'package:ex_control_brightness/app/modules/home/components/_export_component_files.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {

  final String title;

  const HomePage({Key? key, this.title = 'Controle de luminosidade'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}
class HomePageState extends State<HomePage> {

  final HomeStore homeStore = Modular.get();

  @override
  void initState() {
    super.initState();
    homeStore.initPlatformBrightness();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text('Como Alterar todas as fontes?',
                      style: TextStyle(fontSize: homeStore.titleFontSize, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Text('Se você assim como eu já se perguntou como melhorar a qualidade de leitura '
                      'do seu usuário ajustando o tamanho da fonte, seja muito bem vindo e aproveite '
                      'esse tutória criado por mim. Prazer eu sou TioW, e te ajudarei hoje a resolver este problema.',
                    style: TextStyle(fontSize: homeStore.textFontSize),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10.0),
                  Text('Note que já temos alguns textos nesta tela, então, vamos brincar um pouco '
                      'com eles. Clique no "FloatingActionButton" abaixo para visualizar as opções.',
                    style: TextStyle(fontSize: homeStore.textFontSize),
                    textAlign: TextAlign.justify,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text('Funcionalidades', style: TextStyle(fontSize: homeStore.subTitleFontSize, fontWeight: FontWeight.w500)),
                  ),
                  Text('Clique no botão de "+" para aumentar o tamanho de todas as fontes '
                      'e no botão de "-" para diminuir as fontes. Ainda temos um "Slider" para '
                      'controlar a luminosidade da tela.',
                    style: TextStyle(fontSize: homeStore.textFontSize),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FabMenuButton(homeStore: homeStore),
        );
      }
    );
  }
}