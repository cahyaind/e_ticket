import 'package:e_ticket/pages/home/main_tour_page.dart';
import 'package:e_ticket/pages/tour/popular_tour_detail.dart';
import 'package:e_ticket/pages/tour/recommended_tour_detail.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularTour = "/popular-tour";
  static const String recommendedTour = "/recommended-tour";

  static String getInitial() => '$initial';
  static String getPopularTour(int pageId) => '$popularTour?pageId=$pageId';
  static String getRecommendedTour(int pageId) => '$recommendedTour?pageId=$pageId';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const MainTourPage()),

    // FOR POPULAR TOUR
    GetPage(name: popularTour, page: () {
      // print("popular tour detail get called"); // ini buat cek apakah function-nya berjalan mulus atau tidak
      var pageId = Get.parameters['pageId']; // helperFunction yg digunakan utk mengGet parameter
      return PopularTourDetail(pageId: int.parse(pageId!),);
    },
      transition: Transition.fadeIn
    ),

    // FOR RECOMMENDED TOUR
    GetPage(name: recommendedTour, page: () {
      var pageId = Get.parameters['pageId'];
      return RecommendedTourDetail(pageId: int.parse(pageId!),);
    },
      transition: Transition.fadeIn
    ),
  ];
}