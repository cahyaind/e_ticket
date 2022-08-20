import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // widget.of(context).size.width dibagi value, sama dengan hasilnya di bawah ini
  // example, 844/10=84.4

  static double pageView = screenHeight/2.64;
  static double pageViewContainer = screenHeight/3.84;
  static double pageViewTextContainer = screenHeight/7.03;

  static double height10 = screenHeight/84.4;
  static double height15 = screenHeight/56.2;
  static double height20 = screenHeight/42.2;

  static double font20 = screenHeight/42.2;
}