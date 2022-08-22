import 'package:e_ticket/data/repository/cart_repo.dart';
import 'package:e_ticket/models/cart_model.dart';
import 'package:e_ticket/models/products_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  Map<int, CartModel> _items = {};

  Map<int, CartModel> get items => _items;

  void addItem(ProductModel product, int quantity) {
    if (_items.containsKey(product.id!)) {
      _items.update(product.id!, (value) {
        return CartModel(
          id: value.id,
          name: value.name,
          price: value.price,
          img: value.img,
          quantity: value.quantity! + quantity,
          isExist: true,
          time: DateTime.now().toString(),
        );
      });
    } else {
      // print("length of the item is " + _items.length.toString());
      _items.putIfAbsent(product.id!, () {
        // di bawah ini, digunakan untuk mengecek key dan value dari quantitasnya
        // print("menambahkan item ke keranjang, dengan id ${product.id!} kuantitasnya $quantity");
        // _items.forEach((key, value) {
        // print("quantity is " + value.quantity.toString()); // untuk mengetahui kuantitas didalam kuantitas
        // });
        return CartModel(
          id: product.id,
          name: product.name,
          price: product.price,
          img: product.img,
          quantity: quantity,
          isExist: true,
          time: DateTime.now().toString(),
        );
      });
    }
  }
}
