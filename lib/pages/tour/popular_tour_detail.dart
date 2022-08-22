import 'package:e_ticket/pages/home/main_tour_page.dart';
import 'package:e_ticket/utils/colors.dart';
import 'package:e_ticket/utils/dimensions.dart';
import 'package:e_ticket/widgets/app_column.dart';
import 'package:e_ticket/widgets/app_icon.dart';
import 'package:e_ticket/widgets/big_text.dart';
import 'package:e_ticket/widgets/exandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularTourDetail extends StatelessWidget {
  const PopularTourDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/tour0.jpg"),
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
                    Get.to(()=>MainTourPage());
                  },
                  child: AppIcon(icon: Icons.arrow_back_ios),
                ),
                AppIcon(icon: Icons.shopping_cart_outlined)
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
                  const AppColumn(text: "Bukit Mercury"),
                  SizedBox(height: Dimensions.width20),
                  BigText(text: "Description"),
                  SizedBox(height: Dimensions.width20),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                        text:
                            "Bukit Mercury Sayang Kaak menjadi obyek wisata baru di Majalengka yang rekomended untuk mengisi waktu libur anda. Menawarkan keindahan panorama yang di lengkapi dengan berbagai macam spot foto instagenic, Bukit Mercury Sayang Kaak akan memanjakan liburan anda. Majalengka Jawa Barat memang menjadi salah satu kota yang menyajikan wisata alam yang layak untuk anda kunjungi ketika berlibur. Nikmati waktu libur akhir pekan anda dan keluarga yang menyenangkan di Majalengka dengan mengunjungi Bukit Mercury Sayang Kaak.Obyek wisata alam Bukit Mercury Sayang Kaak berada di ketinggian sekitar 1600 mdpl, sehingga udara segar dengan pemandangan alam yang indah akan mendamaikan jiwa anda. Refresh kepenatan jiwa, jenuh dengan suasana perkotaan, bosan di rumah saja dengan menikmati sajian wisata Bukit Mercury Sayang Kaak Majalengka.",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // expandable text widget 4 desc
        ],
      ),
      bottomNavigationBar: Container(
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
                  Icon(Icons.remove, color: AppColors.signColor),
                  SizedBox(width: Dimensions.width10 / 2),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10 / 2),
                  Icon(Icons.add, color: AppColors.signColor),
                ],
              ),
            ),

            // button sebelah kanan
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height10,
                  bottom: Dimensions.height10,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(text: "\$10 | Add to cart", color: Colors.white),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
