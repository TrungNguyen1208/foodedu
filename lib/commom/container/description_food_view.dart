import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_image_path.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class DescriptionFoodView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      height: 18,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            AppImagePath.clock,
            color: AppColor.darkGrayHighlighted,
            width: 15.0,
            height: 15.0,
          ),
          const SizedBox(width: AppMargin.small),
          Text('15 mins',
              maxLines: 1,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style:
                  theme.caption.copyWith(color: AppColor.darkGrayHighlighted)),
          const SizedBox(width: AppMargin.normal),
          Container(
            width: 4,
            height: 4,
            decoration: const BoxDecoration(
              color: AppColor.darkGrayHighlighted,
              borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
            ),
          ),
          const SizedBox(width: AppMargin.normal),
          Text('1.1 km',
              maxLines: 1,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style:
              theme.caption.copyWith(color: AppColor.darkGrayHighlighted)),
          const SizedBox(width: AppMargin.big),
          Image.asset(
            AppImagePath.star,
            width: 15.0,
            height: 15.0,
          ),
          const SizedBox(width: AppMargin.small),
          Text('5.0',
              maxLines: 1,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style:
              theme.caption.copyWith(color: AppColor.darkGrayHighlighted)),
        ],
      ),
    );
  }
}
