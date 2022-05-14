import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Product 1', style: TextStyle(fontSize: 24)),
                          Text('Product 1 description',
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      const Text('\$10.00',
                          style: TextStyle(fontSize: 16, color: Colors.green)),
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
