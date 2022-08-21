import 'package:e_ticket/utils/colors.dart';
import 'package:e_ticket/utils/dimensions.dart';
import 'package:e_ticket/widgets/app_icon.dart';
import 'package:e_ticket/widgets/big_text.dart';
import 'package:e_ticket/widgets/exandable_text_widget.dart';
import 'package:flutter/material.dart';

class RecommendedTourDetail extends StatelessWidget {
  const RecommendedTourDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(
                        size: Dimensions.font26,
                        text: "Bukit Mercury Sayang Kaak")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.greenColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/tour0.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: const ExpandableTextWidget(
                    text:
                        "Bukit Mercury Sayang Kaak menjadi obyek wisata baru di Majalengka yang rekomended untuk mengisi waktu libur anda. Menawarkan keindahan panorama yang di lengkapi dengan berbagai macam spot foto instagenic, Bukit Mercury Sayang Kaak akan memanjakan liburan anda. Majalengka Jawa Barat memang menjadi salah satu kota yang menyajikan wisata alam yang layak untuk anda kunjungi ketika berlibur. Nikmati waktu libur akhir pekan anda dan keluarga yang menyenangkan di Majalengka dengan mengunjungi Bukit Mercury Sayang Kaak. Obyek wisata alam Bukit Mercury Sayang Kaak berada di ketinggian sekitar 1600 mdpl, sehingga udara segar dengan pemandangan alam yang indah akan mendamaikan jiwa anda. Refresh kepenatan jiwa, jenuh dengan suasana perkotaan, bosan di rumah saja dengan menikmati sajian wisata Bukit Mercury Sayang Kaak Majalengka. Bukit Mercury Sayang Kaak menjadi obyek wisata baru di Majalengka yang rekomended untuk mengisi waktu libur anda. Menawarkan keindahan panorama yang di lengkapi dengan berbagai macam spot foto instagenic, Bukit Mercury Sayang Kaak akan memanjakan liburan anda. Majalengka Jawa Barat memang menjadi salah satu kota yang menyajikan wisata alam yang layak untuk anda kunjungi ketika berlibur. Nikmati waktu libur akhir pekan anda dan keluarga yang menyenangkan di Majalengka dengan mengunjungi Bukit Mercury Sayang Kaak. Obyek wisata alam Bukit Mercury Sayang Kaak berada di ketinggian sekitar 1600 mdpl, sehingga udara segar dengan pemandangan alam yang indah akan mendamaikan jiwa anda. Refresh kepenatan jiwa, jenuh dengan suasana perkotaan, bosan di rumah saja dengan menikmati sajian wisata Bukit Mercury Sayang Kaak Majalengka. Bukit Mercury Sayang Kaak menjadi obyek wisata baru di Majalengka yang rekomended untuk mengisi waktu libur anda. Menawarkan keindahan panorama yang di lengkapi dengan berbagai macam spot foto instagenic, Bukit Mercury Sayang Kaak akan memanjakan liburan anda. Majalengka Jawa Barat memang menjadi salah satu kota yang menyajikan wisata alam yang layak untuk anda kunjungi ketika berlibur. Nikmati waktu libur akhir pekan anda dan keluarga yang menyenangkan di Majalengka dengan mengunjungi Bukit Mercury Sayang Kaak. Obyek wisata alam Bukit Mercury Sayang Kaak berada di ketinggian sekitar 1600 mdpl, sehingga udara segar dengan pemandangan alam yang indah akan mendamaikan jiwa anda. Refresh kepenatan jiwa, jenuh dengan suasana perkotaan, bosan di rumah saja dengan menikmati sajian wisata Bukit Mercury Sayang Kaak Majalengka. Bukit Mercury Sayang Kaak menjadi obyek wisata baru di Majalengka yang rekomended untuk mengisi waktu libur anda. Menawarkan keindahan panorama yang di lengkapi dengan berbagai macam spot foto instagenic, Bukit Mercury Sayang Kaak akan memanjakan liburan anda. Majalengka Jawa Barat memang menjadi salah satu kota yang menyajikan wisata alam yang layak untuk anda kunjungi ketika berlibur. Nikmati waktu libur akhir pekan anda dan keluarga yang menyenangkan di Majalengka dengan mengunjungi Bukit Mercury Sayang Kaak. Obyek wisata alam Bukit Mercury Sayang Kaak berada di ketinggian sekitar 1600 mdpl, sehingga udara segar dengan pemandangan alam yang indah akan mendamaikan jiwa anda. Refresh kepenatan jiwa, jenuh dengan suasana perkotaan, bosan di rumah saja dengan menikmati sajian wisata Bukit Mercury Sayang Kaak Majalengka. Bukit Mercury Sayang Kaak menjadi obyek wisata baru di Majalengka yang rekomended untuk mengisi waktu libur anda. Menawarkan keindahan panorama yang di lengkapi dengan berbagai macam spot foto instagenic, Bukit Mercury Sayang Kaak akan memanjakan liburan anda. Majalengka Jawa Barat memang menjadi salah satu kota yang menyajikan wisata alam yang layak untuk anda kunjungi ketika berlibur. Nikmati waktu libur akhir pekan anda dan keluarga yang menyenangkan di Majalengka dengan mengunjungi Bukit Mercury Sayang Kaak. Obyek wisata alam Bukit Mercury Sayang Kaak berada di ketinggian sekitar 1600 mdpl, sehingga udara segar dengan pemandangan alam yang indah akan mendamaikan jiwa anda. Refresh kepenatan jiwa, jenuh dengan suasana perkotaan, bosan di rumah saja dengan menikmati sajian wisata Bukit Mercury Sayang Kaak Majalengka. Bukit Mercury Sayang Kaak menjadi obyek wisata baru di Majalengka yang rekomended untuk mengisi waktu libur anda. Menawarkan keindahan panorama yang di lengkapi dengan berbagai macam spot foto instagenic, Bukit Mercury Sayang Kaak akan memanjakan liburan anda. Majalengka Jawa Barat memang menjadi salah satu kota yang menyajikan wisata alam yang layak untuk anda kunjungi ketika berlibur. Nikmati waktu libur akhir pekan anda dan keluarga yang menyenangkan di Majalengka dengan mengunjungi Bukit Mercury Sayang Kaak. Obyek wisata alam Bukit Mercury Sayang Kaak berada di ketinggian sekitar 1600 mdpl, sehingga udara segar dengan pemandangan alam yang indah akan mendamaikan jiwa anda. Refresh kepenatan jiwa, jenuh dengan suasana perkotaan, bosan di rumah saja dengan menikmati sajian wisata Bukit Mercury Sayang Kaak Majalengka. Bukit Mercury Sayang Kaak menjadi obyek wisata baru di Majalengka yang rekomended untuk mengisi waktu libur anda. Menawarkan keindahan panorama yang di lengkapi dengan berbagai macam spot foto instagenic, Bukit Mercury Sayang Kaak akan memanjakan liburan anda. Majalengka Jawa Barat memang menjadi salah satu kota yang menyajikan wisata alam yang layak untuk anda kunjungi ketika berlibur. Nikmati waktu libur akhir pekan anda dan keluarga yang menyenangkan di Majalengka dengan mengunjungi Bukit Mercury Sayang Kaak. Obyek wisata alam Bukit Mercury Sayang Kaak berada di ketinggian sekitar 1600 mdpl, sehingga udara segar dengan pemandangan alam yang indah akan mendamaikan jiwa anda. Refresh kepenatan jiwa, jenuh dengan suasana perkotaan, bosan di rumah saja dengan menikmati sajian wisata Bukit Mercury Sayang Kaak Majalengka.",
                  ),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                ),
                BigText(
                  text: "\Rp17.99 " + " X " + " 0",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                )
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),

                // button sebelah kanan
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      bottom: Dimensions.height10,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child:
                      BigText(text: "\$10 | Add to cart", color: Colors.white),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
