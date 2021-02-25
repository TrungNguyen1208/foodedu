import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class TitleSection extends StatelessWidget {
  final String title, rightText;
  final bool isShowRightText;
  final VoidCallback onPressRightText;

  const TitleSection({
    Key key,
    @required this.title,
    this.rightText = 'View all',
    this.isShowRightText = true,
    this.onPressRightText,
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
            style: Theme.of(context).textTheme.headline5,
          ),
          const Spacer(),
          if (isShowRightText)
            GestureDetector(
              onTap: onPressRightText ?? () {},
              child: Text(
                rightText,
                maxLines: 1,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: AppColor.primary),
              ),
            ),
        ],
      ),
    );
  }
}
