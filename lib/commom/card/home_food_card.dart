import 'package:flutter/material.dart';
import 'package:foodedu/commom/container/description_food_view.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_image_path.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class HomeFoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Container(
      width: 241,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const <BoxShadow>[
          AppShadow.restaurantCard,
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            AppImagePath.food1,
            fit: BoxFit.fill,
            width: double.infinity,
            height: 104.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 5, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Creamos',
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: theme.subtitle1),
                const SizedBox(height: AppMargin.normal),
                Text('Chapel Ln, Harriseahead',
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: theme.caption),
                const SizedBox(height: AppMargin.small),
                DescriptionFoodView()
              ],
            ),
          )
        ],
      ),
    );
  }
}
