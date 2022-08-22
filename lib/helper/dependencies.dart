import 'package:e_ticket/controllers/popular_object_controller.dart';
import 'package:e_ticket/controllers/popular_product_controller.dart';
import 'package:e_ticket/data/api/api_client.dart';
import 'package:e_ticket/data/repository/popular_object_repo.dart';
import 'package:e_ticket/data/repository/popular_product_repo.dart';
import 'package:e_ticket/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {

  // mengGET apiClient
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  // mengGET repository
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => PopularObjectRepo(apiClient: Get.find()));

  // mengGET controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => PopularObjectController(popularObjectRepo: Get.find()));

}