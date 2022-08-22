import 'package:e_ticket/data/repository/popular_product_repo.dart';
import 'package:e_ticket/models/products_model.dart';
import 'package:e_ticket/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  int _quantity = 0;
  int get quantity => _quantity;
  int _inCartItems = 0;
  int get inCartItems => _inCartItems + _quantity;


  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode==200) {
      print("got products");
      // print(json.decode(response.body));
      _popularProductList=[];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      // print(_popularProductList);
      _isLoaded = true;
      update();
    } else {

    }
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      // print("wow this is increment " + _quantity.toString()); 
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
      // print("decrement terjadi " + _quantity.toString());
    }
    update();
  }
  int checkQuantity(int quantity) { 
    // int checkQuantity diberi tipe data karena dia akan return value
    if (quantity < 0) {
      Get.snackbar("Hey", "Sudah 0, kamu tidak dapat menguranginya lagi",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      return 0;
    } else if (quantity>20) {
      Get.snackbar("Hey", "Kamu tidak dapat menambahnya lagi",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct() {
    _quantity = 0;
    _inCartItems = 0;
  }
}
