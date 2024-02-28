import 'package:aifood/CustomWidgets/CircleAvatar.dart';
import 'package:aifood/CustomWidgets/styles.dart';
import 'package:flutter/material.dart';

class Pedidos extends StatefulWidget {
  const Pedidos({super.key});

  @override
  State<Pedidos> createState() => _PedidosState();
}

class _PedidosState extends State<Pedidos> {
  
  int contagem = 1;
  double valor = 8.99;
  double valorTotal = 8.99;


  double valor2 = 10.99;
  double valorTotal2 = 10.99; 
  int contagem2 = 1;
  double valorGeral = 19.98;
  void aumentarContagem(){
    setState(() {
      contagem++;
      valorTotal = contagem*valor;
      valorGeral = valorTotal + valorTotal2;
    });
  }
  void diminuirContagem(){
    if(contagem > 0){
      setState(() {
        contagem --;
        valorTotal = valor*contagem;
        valorGeral = valorTotal + valorTotal2;
      });
    }
  }


  void aumentarContagem2(){
    setState(() {
      contagem2++;
      valorTotal2 = contagem2*valor2;
      valorGeral = valorTotal + valorTotal2;

    });
  }
  void diminuirContagem2(){
    if(contagem2 > 0){
      setState(() {
        contagem2--;
        valorTotal2 = valor2*contagem2;
        valorGeral = valorTotal + valorTotal2;
      });
    }
  }



  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sacola', style: textNunitoBold(18), textAlign: TextAlign.center,)),
        ),
        body: ListView(
          children: [
            Divider(height: 10, color: Colors.grey[80],),
            Padding(
              padding: const EdgeInsets.all(16),
              child: 
                Column(
                  children: [
                    Row(
                    children: [
                      circleAvatarSacola('assets/pastel.png'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Pastel To Frito', style: textNunitoBold(14),),
                            Text('Adicionar mais itens', style: textNunitoR300(12), )
                          ],
                        ),
                      )
                    ],  
                    ),
                    SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Itens adicionados', style: textNunitoBold(16))
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 64, 
                                  height: 64,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/pastel-imagem.webp')),
                                    borderRadius: BorderRadius.circular(8)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Pastel de queijo', style: textNunitoBold(12),),
                                      Text('& Recheio de catupiry', style: textNunitoBold(12),),                                      
                                      Text('Pastel de queijo com recheio de catupiry...', style: textRoboto300(9),),  
                                      Text('R\$ $valorTotal', style: textNunitoG300(12),)
                                      ],
                                  ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        IconButton(onPressed: diminuirContagem, icon: Icon(Icons.remove), iconSize: 10, color: Colors.red,),
                                        Text('$contagem', style: textNunito300(12),),
                                        IconButton(onPressed: aumentarContagem, icon: Icon(Icons.add), iconSize: 10, color: Colors.red,),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(height: 12),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 64, 
                                  height: 64,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/271fec0ea09281bfe067f8ddbe3d041e_XL.jpg')),
                                    borderRadius: BorderRadius.circular(8)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Pastel de carne', style: textNunitoBold(12),),
                                      Text('& Recheio acebolado', style: textNunitoBold(12),),                                      
                                      Text('Pastel de queijo com recheio acebolado...', style: textRoboto300(9),),  
                                      Text('R\$ $valorTotal2', style: textNunitoG300(12),)
                                      ],
                                  ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        IconButton(onPressed: diminuirContagem2, icon: Icon(Icons.remove), iconSize: 10, color: Colors.red,),
                                        Text('$contagem2', style: textNunito300(12),),
                                        IconButton(onPressed: aumentarContagem2, icon: Icon(Icons.add), iconSize: 10, color: Colors.red,),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                        ],
                      ),
                      ),
                      SizedBox(height: 30),
                      
                      Text('Adicionar mais itens', style: textNunitoR300(14),),
                      SizedBox(height: 100),
                      
                      Text('Total: R\$ $valorGeral', style: textNunitoBold(14),),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.all(8.0),

                        child: Container(decoration: BoxDecoration(color: Color.fromARGB(255, 230,46,46), borderRadius: BorderRadius.circular(10)), padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 22),  child: Text('Finalizar a compra', style: textNunitoWBold(20),)),
                      )
                  ],
                  
                )
              
            ),
          ],

          
        ),
        
    );
  }
}