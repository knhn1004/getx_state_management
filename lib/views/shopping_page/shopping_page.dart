import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/shopping_controller.dart';
import 'package:getx_state_management/views/shopping_page/product_card.dart';

class ShoppingPage extends StatelessWidget {
  final _controller = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shopping'),
          elevation: 0,
        ),
        body: SafeArea(
          child: Column(children: [
            Expanded(
              child: GetX<ShoppingController>(
                  builder: (controller) => ListView.builder(
                        itemCount: _controller.products.length,
                        itemBuilder: (ctx, i) => ProductCard(
                          product: _controller.products[i],
                        ),
                      )),
            ),
            const Text('Total Amount: '),
            const SizedBox(height: 100)
          ]),
        ));
  }
}
