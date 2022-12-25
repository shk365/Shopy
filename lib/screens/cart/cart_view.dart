import 'package:flutter/material.dart';
import 'package:shopy/model/product_model.dart';

class CartView extends StatelessWidget {
  const CartView({super.key, required this.productInCart});

  final ProductModel productInCart;

  @override
  Widget build(BuildContext context) {
    return Text('Coming Soon ');
  }
}
