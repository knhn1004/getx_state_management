import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/cart_controller.dart';
import 'package:getx_state_management/controllers/products_controller.dart';
import 'package:getx_state_management/views/shopping_page/product_card.dart';

class ShoppingPage extends StatelessWidget {
  final _products_controller = Get.put(ProductsController());
  final _cart_controller = Get.put(CartController());

  ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shopping'),
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: const Icon(Icons.add_shopping_cart),
          label: GetX<CartController>(builder: (controller) {
            return Text(_cart_controller.totalItems.toString());
          }),
          backgroundColor: Colors.pink,
        ),
        body: SafeArea(
          child: Obx(() => _products_controller.loading.value
              ? const Center(child: CircularProgressIndicator())
              : Column(children: [
                  Expanded(
                      child: ListView.builder(
                    itemCount: _products_controller.products.length,
                    itemBuilder: (ctx, i) =>
                        ProductCard(product: _products_controller.products[i]),
                  )),
                  GetX<CartController>(builder: (controller) {
                    return Text('Total Amount: \$${controller.totalPrice}',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ));
                  }),
                  const SizedBox(height: 100),
                ])),
        ));
  }
}
