import 'package:e_ticket/pages/cart/cart_page.dart';
import 'package:e_ticket/pages/home/home_page.dart';
import 'package:e_ticket/pages/home/main_tour_page.dart';
import 'package:e_ticket/pages/splash/splash_page.dart';
import 'package:e_ticket/pages/tour/popular_tour_detail.dart';
import 'package:e_ticket/pages/tour/recommended_tour_detail.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String splashPage = "/splash-page";
  static const String initial = "/";
  static const String popularTour = "/popular-tour";
  static const String recommendedTour = "/recommended-tour";
  static const String cartPage = "/cart-page";

  static String getSplashPage() => '$splashPage';
  static String getInitial() => '$initial';
  static String getPopularTour(int pageId, String page) =>
      '$popularTour?pageId=$pageId&page=$page';
  static String getRecommendedTour(int pageId, String page) =>
      '$recommendedTour?pageId=$pageId&page=$page';
  static String getCartPage() => '$cartPage';

  static List<GetPage> routes = [

    GetPage(name: splashPage, page: () => SplashScreen()),

    GetPage(name: initial, page: () => const HomePage()),

    // FOR POPULAR TOUR
    GetPage(
      name: popularTour,
      page: () {
        // print("popular tour detail get called"); // ini buat cek apakah function-nya berjalan mulus atau tidak
        // di bawah ini -> helperFunction yg digunakan utk mengGet parameter
        var pageId = Get.parameters['pageId'];
        var page = Get.parameters['page'];
        return PopularTourDetail(pageId: int.parse(pageId!), page: page!);
      },
      transition: Transition.fadeIn,
    ),

    // FOR RECOMMENDED TOUR
    GetPage(
      name: recommendedTour,
      page: () {
        var pageId = Get.parameters['pageId'];
        var page = Get.parameters['page'];
        return RecommendedTourDetail(pageId: int.parse(pageId!), page:page!);
      },
      transition: Transition.fadeIn,
    ),

    // FOT CART
    GetPage(
      name: cartPage,
      page: () {
        return CartPage();
      },
      transition: Transition.fadeIn,
    ),
  ];
}
