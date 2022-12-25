import 'package:flutter/material.dart';
import 'package:shopy/model/product_model.dart';

class CartView extends StatelessWidget {
  const CartView({super.key, required this.product});

  final List<ProductModel> product;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          isThreeLine: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              leading: Image.network(product[index].image),
              title: Text(product[index].title, style: const TextStyle(overflow: TextOverflow.ellipsis),),
              subtitle: Row(
                  children: [
                    const Text('\$',
                    ),
                    Text(
                      product[index].price.toString(),
                    ),
                  ],
                ),
              trailing: const Icon(Icons.remove_shopping_cart_rounded),
        );
      },
    );
  }
}
