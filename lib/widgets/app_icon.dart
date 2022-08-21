import 'package:e_ticket/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final double iconSize;

  // parameter pada fungsi adalah nilai yang wajib di isi saat sebuah fungsi dipanggil
  const AppIcon({
    Key? key,
    required this.icon,
    this.backgroundColor = const Color(0xffFCF4E4),
    this.iconColor = const Color(0xff756D54),
    this.size = 40,
    this.iconSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        // size: Dimensions.iconSize16,
        size: iconSize,
      ),
    );
  }
}
