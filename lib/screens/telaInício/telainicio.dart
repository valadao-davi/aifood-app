import 'package:aifood/CustomWidgets/card.dart';
import 'package:aifood/CustomWidgets/slide.dart';
import 'package:aifood/CustomWidgets/styles.dart';
import 'package:flutter/material.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('R. Ari Barroso, 330', style: textNunitoBold(18),),
        centerTitle: true,
        actions: const [Padding(
          padding: EdgeInsets.all(16.0),
          child: Icon(Icons.notifications, color: Colors.red),
        )],
      ),
      body: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              card(190, 80, Color.fromARGB(255, 230,46,46), 'Mercado', 'assets/mercado.png'),
              card(190, 80, Color.fromARGB(255, 230,46,46), 'Lanche', 'assets/lanches.png'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                cardDois(90, 100, Colors.deepPurple[50]!, 'Farmácia', 'assets/farmacia.png'),
                cardDois(90, 100, Colors.deepPurple[50]!, 'Bebidas', 'assets/bebidas.png'),
                cardDois(90, 100, Colors.deepPurple[50]!, 'Sucos', 'assets/sucos.png'),
                cardDois(90, 100, Colors.deepPurple[50]!, 'Pizzas', 'assets/pizza.png'),
            
              ],
            ),
          ),
          Slide(),
        ],
      ),
    );
    
  }
}