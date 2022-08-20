import 'package:e_ticket/utils/colors.dart';
import 'package:e_ticket/widgets/big_text.dart';
import 'package:e_ticket/widgets/icon_and_text_widget.dart';
import 'package:e_ticket/widgets/small_text.dart';
import 'package:flutter/material.dart';

class TourPageBody extends StatefulWidget {
  const TourPageBody({Key? key}) : super(key: key);

  @override
  State<TourPageBody> createState() => _TourPageBodyState();
}

class _TourPageBodyState extends State<TourPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;

  double _scaleFactor = 0.8;
  double _height = 220;

  // move left and right; zoom in zoom out
  // init state to initialize yg diperlukan things that your page should need
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!; //page! = page value
        // print("Current value is "+_currPageValue.toString());
      });
    });
  }

  // dispose adalah metode yang dipicu setiap kali objek yang dibuat dari widget stateful dihapus secara permanen dari pohon widget.
  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {

    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) 
    {  // left
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor()+1) 
    { // right
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;  // 1/10*220=22
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor()-1) 
    { // left
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;  
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else 
    { // agar saat scrolling left/right auto kecil height-nya
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor), 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          // untuk image
          Container(
            height: 220,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? Color(0xff69c5df) : Color(0xff9294cc),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/image/tour1.jpg'),
              ),
            ),
          ),
          // untuk deskripsi
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff383838),
                    blurRadius: 5.0,
                    offset: Offset(0, 4) // x , y axis 5 pixel
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Bukit Mercury"),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) => Icon(Icons.star,
                                color: AppColors.mainColor, size: 15),
                          ),
                        ),
                        const SizedBox(width: 10),
                        SmallText(text: "4.5"),
                        const SizedBox(width: 10),
                        SmallText(text: "17"),
                        const SizedBox(width: 10),
                        SmallText(text: "Comments"),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        IconAndTextWidget(
                          icon: Icons.circle_sharp,
                          text: "Normal",
                          iconColor: AppColors.iconColor1,
                        ),
                        IconAndTextWidget(
                          icon: Icons.location_on,
                          text: "2.7km",
                          iconColor: AppColors.mainColor,
                        ),
                        IconAndTextWidget(
                          icon: Icons.access_time_rounded,
                          text: "40min",
                          iconColor: AppColors.iconColor2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
