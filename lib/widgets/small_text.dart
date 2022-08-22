import 'package:flutter/cupertino.dart';

// this is the class who reusable text for my app
class SmallText extends StatelessWidget {
  // dynamic class
  Color? color; //color is optional
  final String text;
  double size;
  double height;

  SmallText({
    Key? key,
    this.color = const Color(0xffCCC7C5),
    required this.text,
    this.size = 12,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Poppins',
        color: color,
        fontSize: size,
        height: height,
      ),
    );
  }
}
