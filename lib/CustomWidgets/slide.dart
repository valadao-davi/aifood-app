import 'dart:async';

import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  PageController pageController = PageController();
  List<double> progresso = [0.0, 0.0, 0.0, 0.0];
  Timer? timer;
  int qntdPaginas = 4;
  int paginaAtual = 0;

  @override
   void initState(){
      super.initState();
      nextPage();
      iniciarProgresso();
    }

    nextPage(){
      timer = Timer.periodic(Duration(seconds: 3), (timer) { 
         int proximaPagina = paginaAtual + 1;
         if (proximaPagina >= qntdPaginas){
          proximaPagina = 0;
         }
         pageController.animateToPage(proximaPagina, duration: Duration(milliseconds: 300), curve: Curves.linear).then((_) 
         {
          setState((){
            paginaAtual = proximaPagina;
            reset();
          });
         });
      });
    }

  void iniciarProgresso(){
      timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
        setState(() {
          if(progresso[paginaAtual] <= 1){
            progresso[paginaAtual] += 0.02;
          }else{
            timer.cancel();
          }
        });
       });
  }

  void reset(){
    for(int i = 0; i < qntdPaginas; i++ ){
      progresso[i] = 0.0;
    }
    iniciarProgresso();
  }

  @override
  void dispose(){
    pageController.dispose();
    timer!.cancel();
    super.dispose();
  }

  List<Widget>buildIndicator(){
    List<Widget> lista = [];
    
    for(int i = 0; i < qntdPaginas; i++){
      lista.add(Container(
        width: 50,
        height: 5,
        margin: const EdgeInsets.all(8),
        child: LinearProgressIndicator(
          borderRadius: BorderRadius.circular(8),
          value: progresso[i],
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation<Color>(paginaAtual == i? Colors.blue : Colors.grey),
        ),
      ));
    }
    return lista;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Color.fromARGB(255,236,34,49),       
        borderRadius: BorderRadius.circular(8)
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView(
          controller: pageController,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset('assets/carne.gif')
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset('assets/massa.gif')
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset('assets/pizza.gif')
            ),
             Container(
              width: double.infinity,
              height: 200,
              child: Image.asset('assets/sanduiche.gif')
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: buildIndicator(),
          ),
          )
      ]),
    );
  }
}