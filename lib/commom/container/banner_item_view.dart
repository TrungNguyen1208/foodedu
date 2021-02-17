import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_image_path.dart';

class BannerItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 122,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        color: Color.fromRGBO(246, 246, 246, 1),
      ),
      child: Image.asset(AppImagePath.banner1),
    );
  }
}
