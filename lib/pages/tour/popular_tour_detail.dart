import 'package:e_ticket/controllers/cart_controller.dart';
import 'package:e_ticket/controllers/popular_product_controller.dart';
import 'package:e_ticket/pages/home/main_tour_page.dart';
import 'package:e_ticket/routes/route_helper.dart';
import 'package:e_ticket/utils/app_constants.dart';
import 'package:e_ticket/utils/colors.dart';
import 'package:e_ticket/utils/dimensions.dart';
import 'package:e_ticket/widgets/app_column.dart';
import 'package:e_ticket/widgets/app_icon.dart';
import 'package:e_ticket/widgets/big_text.dart';
import 'package:e_ticket/widgets/exandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularTourDetail extends StatelessWidget {
  final int pageId;
  final String page;
  const PopularTourDetail({Key? key, required this.pageId, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];
    Get.find<PopularProductController>()
        .initProduct(product, Get.find<CartController>());

    // di bawah ini yaitu untuk cek apakah datanya sudah ke Get
    // print("pageId is "+pageId.toString());
    // print("product name is "+product.name.toString());
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // image thumbnail
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularTourImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(AppConstants.BASE_URL +
                        AppConstants.UPLOAD_URL +
                        product.img!),
                  ),
                ),
              ),
            ),
            // icon widgets
            Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (page=="cartpage") {
                        Get.toNamed(RouteHelper.getCartPage());
                      } else {
                        Get.toNamed(RouteHelper.getInitial());
                      }
                    },
                    child: const AppIcon(icon: Icons.arrow_back_ios),
                  ),
                  GetBuilder<PopularProductController>(builder: (controller) {
                    return GestureDetector(
                      onTap: () {
                        if (controller.totalItems >= 1)
                        Get.toNamed(RouteHelper.cartPage);
                      },
                      child: Stack(
                        children: [
                          const AppIcon(icon: Icons.shopping_cart_outlined),
                          controller.totalItems >= 1
                              ? Positioned(
                                  right: 0,
                                  top: 0,
                                  child: AppIcon(
                                      icon: Icons.circle,
                                      size: 20,
                                      iconColor: Colors.transparent,
                                      backgroundColor: AppColors.mainColor),
                                )
                              : Container(),
                          Get.find<PopularProductController>().totalItems >= 1
                              ? Positioned(
                                  right: 3,
                                  top: 3,
                                  child: BigText(
                                    text: Get.find<PopularProductController>()
                                        .totalItems
                                        .toString(),
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    );
                  })
                ],
              ),
            ),
            // description of tour
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularTourImgSize - 20,
              child: Container(
                padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.width20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: product.name),
                    SizedBox(height: Dimensions.width20),
                    BigText(text: "Description"),
                    SizedBox(height: Dimensions.width20),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableTextWidget(text: product.description),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // expandable text widget 4 desc
          ],
        ),
        bottomNavigationBar:
            GetBuilder<PopularProductController>(builder: (popularProduct) {
          return Container(
            // height: 120,
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.width30,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20 * 2),
                  topRight: Radius.circular(Dimensions.radius20 * 2),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // button sebelah kiri
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      bottom: Dimensions.height10,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            popularProduct.setQuantity(false);
                          },
                          child:
                              Icon(Icons.remove, color: AppColors.signColor)),
                      SizedBox(width: Dimensions.width10 / 2),
                      BigText(text: popularProduct.inCartItems.toString()),
                      SizedBox(width: Dimensions.width10 / 2),
                      GestureDetector(
                          onTap: () {
                            popularProduct.setQuantity(true);
                          },
                          child: Icon(Icons.add, color: AppColors.signColor)),
                    ],
                  ),
                ),

                // button sebelah kanan TAMBAH KE KERANJANG
                GestureDetector(
                  onTap: () {
                    popularProduct.addItem(product);
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height10,
                        bottom: Dimensions.height10,
                        left: Dimensions.width20,
                        right: Dimensions.width20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor,
                    ),
                    child: BigText(
                        text: "\Rp${product.price!} | Add to cart",
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
