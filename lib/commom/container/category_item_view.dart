import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_image_path.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class CategoryItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            color: Color.fromRGBO(246, 246, 246, 1),
          ),
          child: Center(
            child: Image.asset(
              AppImagePath.burger,
              fit: BoxFit.contain,
              color: const Color(0xff697586),
              width: 30.0,
              height: 30.0,
            ),
          ),
        ),
        const SizedBox(height: AppMargin.big),
        Text('Hot',
            textAlign: TextAlign.center,
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: AppColor.categoryText, height: 1.2))
      ],
    );
  }
}
