import 'package:flutter/material.dart';
import 'package:shopy/model/product_model.dart';
import 'package:shopy/screens/cart/cart_view.dart';

class ProductView extends StatefulWidget {
  ProductView({super.key, required this.product});

  final ProductModel product;

  @override
  State<ProductView> createState() => ProductViewState();
}

class ProductViewState extends State<ProductView> {
  bool inCart = false;
  bool labelCartButton = false;
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
                  widget.product.category.toUpperCase(),
                  style: const TextStyle(fontSize: 22),
                ),
                Container(
                  constraints: const BoxConstraints(maxHeight: 350),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Image.network(
                      widget.product.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  widget.product.title,
                  style: const TextStyle(fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      '\$',
                      style: TextStyle(fontSize: 26),
                    ),
                    Text(
                      widget.product.price.toString(),
                      style: const TextStyle(fontSize: 26),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.product.description,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () {
                        setState(() {
                          inCart = !inCart;
                          labelCartButton = !labelCartButton;
                        });
                      },
                      icon: const Icon(Icons.shopping_cart_rounded),
                      label: labelCartButton
                          ? const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Added to Cart',
                                style: TextStyle(fontSize: 24),
                              ),
                            )
                          : const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Add to Cart',
                                  style: TextStyle(fontSize: 24)),
                            ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child:
                              Text('Buy Now', style: TextStyle(fontSize: 24)),
                        )),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
