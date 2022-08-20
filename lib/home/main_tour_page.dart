import 'package:e_ticket/home/tour_page_body.dart';
import 'package:e_ticket/utils/colors.dart';
import 'package:e_ticket/widgets/big_text.dart';
import 'package:e_ticket/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainTourPage extends StatefulWidget {
  const MainTourPage({Key? key}) : super(key: key);

  @override
  State<MainTourPage> createState() => _MainTourPageState();
}

class _MainTourPageState extends State<MainTourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Indonesia", color: AppColors.mainColor),
                      Row(
                        children: [
                          SmallText(text: "Bandung", color: Colors.black54),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor, //ClassName.memberName
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          TourPageBody(),
        ],
      ),
    );
  }
}
