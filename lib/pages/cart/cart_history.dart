import 'dart:math';

import 'package:e_ticket/controllers/cart_controller.dart';
import 'package:e_ticket/utils/app_constants.dart';
import 'package:e_ticket/utils/colors.dart';
import 'package:e_ticket/utils/dimensions.dart';
import 'package:e_ticket/widgets/app_icon.dart';
import 'package:e_ticket/widgets/big_text.dart';
import 'package:e_ticket/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CartHistory extends StatelessWidget {
  const CartHistory({super.key});

  @override
  Widget build(BuildContext context) {

    var getCartHistoryList = Get.find<CartController>().getCartHistoryList().reversed.toList();

    Map<String, int> cartItemsPreOrder = Map();

    for (int i = 0; i < getCartHistoryList.length; i++) {
      if (cartItemsPreOrder.containsKey(getCartHistoryList[i].time)) {
        cartItemsPreOrder.update(
            getCartHistoryList[i].time!, (value) => ++value);
      } else {
        cartItemsPreOrder.putIfAbsent(getCartHistoryList[i].time!, () => 1);
      }
    }

    List<int> cartOrderTimeToList() {
      return cartItemsPreOrder.entries.map((e) => e.value).toList();
    }

    List<int> orderTimes = cartOrderTimeToList();

    List<int> itemsPreOrder = cartOrderTimeToList();

    var listCounter = 0;

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: Dimensions.height45),
            width: double.maxFinite,
            height: Dimensions.height10*10,
            color: AppColors.mainColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BigText(text: "Riwayat", color: Colors.white),
                AppIcon(
                    icon: Icons.shopping_cart_outlined,
                    iconColor: AppColors.mainColor),
              ],
            ),
          ),
          Expanded(
              child: Container(
                  height: 500,
                  margin: EdgeInsets.only(
                      top: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child: MediaQuery.removePadding(
                    removeTop: true,
                    context: context,
                    child: ListView(
                      children: [
                        for (int i = 0; i < itemsPreOrder.length; i++)
                          Container(
                            height: Dimensions.height30*4,
                            margin:
                                EdgeInsets.only(bottom: Dimensions.height20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // BigText(text: getCartHistoryList[listCounter].time!),
                                (() {
                                  DateTime parseDate = DateFormat("yyy-MM-dd HH:mm:ss").parse(getCartHistoryList[listCounter].time!);
                                  var inputDate = DateTime.parse(parseDate.toString());
                                  var outputFormat = DateFormat("MM/dd/yyyy hh:mm a");
                                  var outputDate = outputFormat.format(inputDate);
                                  // return Text(getCartHistoryList[listCounter].time!);
                                  return BigText(text: outputDate);
                                }()),
                                SizedBox(height: Dimensions.height10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Wrap(
                                      direction: Axis.horizontal,
                                      children: List.generate(
                                        itemsPreOrder[i],
                                        (index) {
                                          if (listCounter <
                                              getCartHistoryList.length) {
                                            listCounter++;
                                          }
                                          return index <= 2
                                              ? Container(
                                                  height: Dimensions.height20*4,
                                                  width: Dimensions.height20*4,
                                                  margin: EdgeInsets.only(
                                                      right:
                                                          Dimensions.width10 /
                                                              2),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Dimensions
                                                                    .radius15 /
                                                                2),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: NetworkImage(
                                                        AppConstants.BASE_URL +
                                                            AppConstants
                                                                .UPLOAD_URL +
                                                            getCartHistoryList[
                                                                    listCounter -
                                                                        1]
                                                                .img!,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : Container();
                                        },
                                      ),
                                    ),
                                    Container(
                                      height: Dimensions.height20*4,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          SmallText(
                                              text: "Total",
                                              color: AppColors.titleColor),
                                          BigText(
                                              text:
                                                  itemsPreOrder[i].toString() +
                                                      " Items",
                                              color: AppColors.titleColor),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: Dimensions.width10,
                                              vertical: Dimensions.height10 / 2,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Dimensions.radius15 / 3),
                                              border: Border.all(
                                                  width: 1,
                                                  color: AppColors.mainColor),
                                            ),
                                            child: SmallText(
                                              text: "satu lagi",
                                              color: AppColors.mainColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}
