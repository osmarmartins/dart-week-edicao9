import 'package:dw9_delivery/app/core/ui/helpers/messages.dart';
import 'package:flutter/material.dart';
import 'package:dw9_delivery/app/core/ui/helpers/loader.dart';
import 'package:dw9_delivery/app/core/ui/widgets/delivery_app_bar.dart';
import 'package:dw9_delivery/app/models/product_model.dart';
import 'package:dw9_delivery/app/pages/home/widgets/delivery_product_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return DeliveryProductTile(
                  product: ProductModel(
                    id: 1,
                    name: 'X-Salada',
                    description:
                        'Lanche acompanha pão, hambúguer, mussarela, alface, tomate e maionese',
                    price: 15.0,
                    image:
                        'https://assets.unileversolutions.com/recipes-v2/106684.jpg?imwidth=800',
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
