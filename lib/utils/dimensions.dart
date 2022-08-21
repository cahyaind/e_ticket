import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // widget.of(context).size.width dibagi value, sama dengan hasilnya di bawah ini
  // example, 844/10=84.4

  static double pageView = screenHeight/2.64;
  static double pageViewContainer = screenHeight/3.84;
  static double pageViewTextContainer = screenHeight/7.03;

  // height dynamic
  static double height10 = screenHeight/84.4;
  static double height15 = screenHeight/56.2;
  static double height20 = screenHeight/42.2;
  static double height30 = screenHeight/28.13;
  static double height45 = screenHeight/18.76;

  // width dynamic
  static double width10 = screenHeight/84.4;
  static double width15 = screenHeight/56.2;
  static double width20 = screenHeight/42.2;
  static double width30 = screenHeight/28.13;

  // fontSize dynamic
  static double font20 = screenHeight/42.2;

  // border radius
  static double radius15 = screenHeight/56.27;
  static double radius20 = screenHeight/42.2;
  static double radius30 = screenHeight/28.13;

  // iconSize dynamic
  static double iconSize24 = screenHeight/35.17;

  // listViewSize
  static double listViewImgSize = screenWidth/3.25; // 390
  static double listViewTextContSize = screenWidth/3.9;
}