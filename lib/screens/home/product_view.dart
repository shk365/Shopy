import 'package:flutter/material.dart';
import 'package:shopy/model/product.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.product});
  
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Shopy'),
          toolbarHeight: 80,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                      product.category.toUpperCase(),
                      style: const TextStyle(fontSize: 22),
                    ),
                Container(
                  constraints: const BoxConstraints(
                    maxHeight: 350
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Image.network(
                      product.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                      product.title,
                      style: const TextStyle(fontSize: 22),
                    ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text('\$',
                      style: TextStyle(fontSize: 26),
                    ),
                    Text(
                      product.price.toString(),
                      style: const TextStyle(fontSize: 26),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(product.description,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ));
  }
}
