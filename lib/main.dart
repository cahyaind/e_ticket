import 'package:e_ticket/controllers/popular_object_controller.dart';
import 'package:e_ticket/pages/tour/recommended_tour_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_ticket/helper/dependencies.dart' as dep;

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // GetMaterialApp bukan sebuah MaterialApp yang dimodifikasi, itu hanyalah sebuah Widget yang telah dikonfigurasi sebelumnya, yang mana memiliki default MaterialApp sebagai child.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularObjectController>().getPopularObjectList;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MainTourPage(),
      // home: const PopularTourDetail(),
      home: const RecommendedTourDetail(),
    );
  }
}