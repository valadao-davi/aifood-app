import 'package:flutter/material.dart';

import 'styles.dart';

Container card(double largura, double altura, Color color, String texto, String img){
  return Container(
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Card(
      color: color,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(texto, style: textNunitoWBold(16)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img, width: 64, height: 64,),
          ),
        ],
      ),
    ),
  );
}

Container cardDois(double largura, double altura, Color color, String texto, String img){
  return Container(
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Card(
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(texto, style: textBold(12)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img, width: 40, height: 40),
          ),
        ],
      ),
    ),
  );
}
