import 'package:get/state_manager.dart';
import 'package:getx_state_management/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    _fetchProducts();
  }

  void _fetchProducts() async {
    await Future.delayed(const Duration(seconds: 2));
    var serverResponse = [
      Product(
        id: 1,
        productName: 'Product 1',
        productImage: 'https://picsum.photos/200/300',
        productDescription: 'Product 1 description',
        price: 10.0,
      ),
      Product(
        id: 2,
        productName: 'Product 2',
        productImage: 'https://picsum.photos/200/300',
        productDescription: 'Product 2 description',
        price: 20.0,
      ),
      Product(
        id: 3,
        productName: 'Product 3',
        productImage: 'https://picsum.photos/200/300',
        productDescription: 'Product 3 description',
        price: 30.0,
      ),
      Product(
        id: 4,
        productName: 'Product 4',
        productImage: 'https://picsum.photos/200/300',
        productDescription: 'Product 4 description',
        price: 40.0,
      ),
      Product(
        id: 5,
        productName: 'Product 5',
        productImage: 'https://picsum.photos/200/300',
        productDescription: 'Product 5 description',
        price: 50.0,
      ),
    ];
    products.value = serverResponse;
  }
}
