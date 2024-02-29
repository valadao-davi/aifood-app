import 'package:aifood/CustomWidgets/CircleAvatar.dart';
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
              card(190, 80, Color.fromARGB(255,245,245,245), 'Mercado' , 'assets/mercado.png'),
              card(190, 80, Color.fromARGB(255, 245,245,245), 'Lanche', 'assets/lanches.png'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                cardDois(90, 100, Color.fromARGB(255,245,245,245), 'Farmácia', 'assets/farmacia.png'),
                cardDois(90, 100, Color.fromARGB(255,245,245,245), 'Bebidas', 'assets/bebidas.png'),
                cardDois(90, 100, Color.fromARGB(255,245,245,245), 'Sucos', 'assets/sucos.png'),
                cardDois(90, 100, Color.fromARGB(255,245,245,245), 'Ver mais', 'assets/plus_red.png'),
            
              ],
            ),
          ),
          Slide(),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Famosos no iFood', style: textNunitoBold(18)),
                   Text('Ver mais', style: textNunitoR300(12))
                 ],
               ),
               Text('com entrega grátis!', style: textNunito300(14)),
               SizedBox(height: 20),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                  Column(
                    children: 
                    [
                    CircleAvatarLoja('assets/pastel.png'),
                    const SizedBox(height: 10),
                    Text('Pastelaria Tofrito', style: textNunitoBold(12),),
                  ],),
                  Column(
                    children: 
                    [
                    CircleAvatarLoja('/assets/2602240000000578-2965293-The_Pizza_Mutant_Ninja_Burger_has_tomatoes_bacon_lettuce_Cheddar-m-22_1424763681723.png'),
                    const SizedBox(height: 10),
                    Text('Ninja Burguer', style: textNunitoBold(12),),
                  ],),
                 ], 
               ),
               
              ],             
            ),
          ),
          SizedBox(height: 20),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Categoria com entrega grátis!', style: textNunitoBold(18),),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardDois(90, 100, Color.fromARGB(255,245,245,245), 'Mercado', 'assets/shop-marketing-3d-icon-illustration-for-your-website-user-interface-and-presentation-3d-render-illustration-free-png.webp'),
                    cardDois(90, 100, Color.fromARGB(255,245,245,245), 'Descontos!', 'assets/discount.png'),
                    cardDois(90, 100, Color.fromARGB(255,245,245,245), 'Saudável', 'assets/salada.webp'),
                    cardDois(90, 100, Color.fromARGB(255,245,245,245), 'Bebidas', 'assets/drink.webp'),
                
                  ],
                ),
              ],
            ),
          ),
        ],

      ),
    );
    
  }
}