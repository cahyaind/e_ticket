import 'package:e_ticket/controllers/cart_controller.dart';
import 'package:e_ticket/controllers/popular_product_controller.dart';
import 'package:e_ticket/controllers/recommended_product_controller.dart';
import 'package:e_ticket/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_ticket/helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // GetMaterialApp bukan sebuah MaterialApp yang dimodifikasi, itu hanyalah sebuah Widget yang telah dikonfigurasi sebelumnya, yang mana memiliki default MaterialApp sebagai child.
  @override
  Widget build(BuildContext context) {
    
    Get.find<CartController>();
    Get.find<CartController>().getCartData();

    return GetBuilder<PopularProductController>(
      builder: (_) {
        return GetBuilder<RecommendedProductController>(builder: (_) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            initialRoute: RouteHelper.getSplashPage(),
            getPages: RouteHelper.routes,
          );
        });
      },
    );
  }
}
