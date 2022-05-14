import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/cart_controller.dart';
import 'package:getx_state_management/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final _cart_controller = Get.put(CartController());

  ProductCard({super.key, required this.product});

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
                    width: 100,
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
                      onPressed: () {
                        _cart_controller.addToCart(product);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        onPrimary: Colors.white,
                      ),
                      child: const Text('Add to cart')),
                ],
              )
            ],
          ),
        ));
  }
}
