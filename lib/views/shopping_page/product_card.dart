import 'package:flutter/material.dart';
import 'package:getx_state_management/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    product.productImage,
                    height: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product.productName,
                              style: const TextStyle(fontSize: 24)),
                          Text(product.productDescription,
                              style: const TextStyle(fontSize: 16)),
                        ],
                      ),
                      Text(product.price.toString(),
                          style: const TextStyle(
                              fontSize: 16, color: Colors.green)),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Add to cart'),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
