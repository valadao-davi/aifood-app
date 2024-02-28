import 'package:aifood/CustomWidgets/menuInferior.dart';
import 'package:aifood/screens/Busca/search_screen.dart';
import 'package:aifood/screens/Pedidos/carrinho.dart';
import 'package:aifood/screens/Profile/Profile.dart';
import 'package:aifood/screens/telaIn%C3%ADcio/telainicio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelecionado = 0;

  void nextStation (int posicao){
    setState(() {
      itemSelecionado = posicao;
    });
  }

  List<Widget> telas = const [
    TelaInicio(), //0
    TelaBusca(), // 1
    Pedidos(), // 2
    Profile(),
    ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: telas.elementAt(itemSelecionado),
      bottomNavigationBar: bottomNavigationBar(itemSelecionado, nextStation),
    );
  }
}
