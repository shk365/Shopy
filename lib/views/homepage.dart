import 'package:flutter/material.dart';
import 'package:shopy/model/product.dart';
import 'package:shopy/views/product_tile.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Shopy'),
        toolbarHeight: 80,
      ),
      body: FutureBuilder<List<ProductModel>>(
        future: fetchProducts(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return ProductTile(product: snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
