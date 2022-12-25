import 'package:flutter/material.dart';
import 'package:shopy/model/product_model.dart';
import 'package:shopy/screens/home/product_view.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key, required this.product});

  final List<ProductModel> product;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 325,
          childAspectRatio: 9/12
        ),
      itemCount: product.length,
      itemBuilder: (context, index) {
        return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
                elevation: 4,
                shadowColor: Colors.indigo,
                child: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProductView(product: product[index]))),
                              child: Image.network(
                                product[index].image,
                                height: 150,
                                fit: BoxFit.contain,
                              ),
                        ),

                        Text(
                          product[index].title,
                          style: const TextStyle(fontSize: 16),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                  children: [
                    const Text('\$',
                      style: TextStyle(fontSize: 26),
                    ),
                    Text(
                      product[index].price.toString(),
                      style: const TextStyle(fontSize: 26),
                    ),
                  ],
                ),
                    ],
                  ),
                ),        );
      },
    );
  }
}
