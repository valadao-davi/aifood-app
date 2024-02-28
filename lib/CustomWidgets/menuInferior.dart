import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

BottomNavigationBar bottomNavigationBar(int itemSelecionado, nextStation){
  return BottomNavigationBar(
        currentIndex: itemSelecionado,
        onTap: nextStation,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
            bottomNavigationBarItem(Icons.home, 'Home'),
            bottomNavigationBarItem(Icons.search, 'Busca'),
            bottomNavigationBarItem(Icons.shopping_cart, 'Pedidos'),
            bottomNavigationBarItem(Icons.person, 'Perfil')
          ],
        );
}

BottomNavigationBarItem bottomNavigationBarItem (IconData icon, String texto){
  return BottomNavigationBarItem(icon: Icon(icon, color: Colors.black), label: texto,);
}