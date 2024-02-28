import 'package:aifood/CustomWidgets/CircleAvatar.dart';
import 'package:aifood/CustomWidgets/listTile.dart';
import 'package:aifood/CustomWidgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.qr_code)
        ]
      ),
       body: ListView(
        children: [
          Row(
            children: [
              espacoVertical(8),
              circleAvatar('https://blog-parceiros.ifood.com.br/wp-content/uploads/2022/02/avatar-ifood-1.png'),
              espacoHorizontal(16),
              Text('Porraaa', style: textBold(16),),
            ],
          ),
          listTile(Icons.message, 'Conversas', 'Meu histórico de conversas'),
          const Divider(),
          listTile(Icons.notifications, 'Notificações', 'Minha central de notificações'),
          const Divider(),
          listTile(Icons.payment, 'Pagamentos', 'Meu histórico de conversas'),
          const Divider(),
          listTile(Icons.store, 'Assinaturas', 'Minhas assinaturas'),
          const Divider(),
          listTile(Icons.loyalty, 'Clube aiFood', 'Meus benefícios exclusivos'),
          const Divider(),
          listTile(Icons.local_offer, 'Cupons', 'Meus cupons de desconto'),
          const Divider(),
          listTile(Icons.card_giftcard, 'aiFood', 'Minha área de compra e resgate'),
          const Divider(),
          listTile(Icons.loyalty, 'Fidelidade', 'Minhas fidelidades'),
          const Divider(),
          listTile(Icons.favorite, 'Favoritos', 'Meus locais favoritos'),
          const Divider(),
          listTile(Icons.explore, 'Descobrir', 'Encontre novidades quentinhas'),
          const Divider(),
          listTile(Icons.location_on, 'Endreços', 'Meus endereços de entrega'),
          const Divider(),
          listTile(Icons.account_circle, 'Dados da conta', 'Minhas informações da conta'),

          
        ],
     
       ),
);
}}