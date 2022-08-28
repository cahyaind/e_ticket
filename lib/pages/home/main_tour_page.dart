import 'package:e_ticket/controllers/popular_product_controller.dart';
import 'package:e_ticket/controllers/recommended_product_controller.dart';
import 'package:e_ticket/pages/home/tour_page_body.dart';
import 'package:e_ticket/utils/colors.dart';
import 'package:e_ticket/utils/dimensions.dart';
import 'package:e_ticket/widgets/big_text.dart';
import 'package:e_ticket/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainTourPage extends StatefulWidget {
  const MainTourPage({Key? key}) : super(key: key);

  @override
  State<MainTourPage> createState() => _MainTourPageState();
}

class _MainTourPageState extends State<MainTourPage> {
  Future<void> _loadResource() async {
    await Get.find<PopularProductController>().getPopularProductList();
    await Get.find<RecommendedProductController>().getRecommendedProductList();
    // Get.find<CartController>();
  }

  @override
  Widget build(BuildContext context) {
    // print("current height is "+MediaQuery.of(context).size.height.toString());
    return RefreshIndicator(
      onRefresh: _loadResource,
      child: Column(
        children: [
          // the header
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Indonesia", color: AppColors.mainColor),
                      Row(
                        children: [
                          SmallText(text: "Indramayu", color: Colors.black54),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor, //ClassName.memberName
                      ),
                      child: Icon(Icons.search,
                          color: Colors.white, size: Dimensions.iconSize24),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // the body (top image)
          const Expanded(
            child: SingleChildScrollView(
              child: TourPageBody(),
            ),
          ),
        ],
      ),
    );
  }
}
