import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_image_path.dart';

class BannerItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312,
      height: 122,
      alignment: Alignment.centerLeft,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Image.asset(AppImagePath.banner1, fit: BoxFit.fill),
    );
  }
}
