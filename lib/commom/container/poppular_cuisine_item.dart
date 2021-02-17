import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_image_path.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class PoppularCuisineItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 113,
      color: AppColor.white,
      child: Column(
        children: [
          Container(
            width: 113,
            height: 70,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              image: DecorationImage(
                image: AssetImage(AppImagePath.food4),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: AppMargin.normal),
          Text('New Zealander',
              textAlign: TextAlign.center,
              maxLines: 1,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: AppColor.categoryText, height: 1.2))
        ],
      ),
    );
  }
}
