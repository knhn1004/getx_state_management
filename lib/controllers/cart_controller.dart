import 'package:get/state_manager.dart';
import 'package:getx_state_management/models/product.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;
  double get totalPrice =>
      cartItems.value.fold(0, (total, item) => total + item.price);
  int get totalItems => cartItems.value.length;

  addToCart(Product product) {
    cartItems.value = [...cartItems.value, product];
  }
}
