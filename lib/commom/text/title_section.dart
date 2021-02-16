import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final bool isShowViewAll;
  final VoidCallback onPressAll;

  const TitleSection({
    Key key,
    @required this.title,
    this.isShowViewAll = true,
    this.onPressAll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.0,
      padding:
          const EdgeInsets.symmetric(horizontal: AppMargin.paddingContentHoz),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title ?? '',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: AppColor.darkGrayHighlighted),
          ),
          const Spacer(),
          if (isShowViewAll)
            Text(
              'View all',
              maxLines: 1,
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: AppColor.primary),
            ),
        ],
      ),
    );
  }
}
