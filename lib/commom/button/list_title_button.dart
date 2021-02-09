import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_image_path.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class ListTitleButton extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onPress;
  final Color color, textColor, iconColor;
  final bool isShowArrow;

  const ListTitleButton({
    Key key,
    @required this.title,
    @required this.image,
    this.onPress,
    this.color = AppColor.white,
    this.textColor = const Color(0xff464646),
    this.iconColor = AppColor.darkGrayHighlighted,
    this.isShowArrow = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 44,
      child: FlatButton(
        onPressed: (onPress != null) ? onPress : () {},
        highlightColor: Colors.transparent,
        color: color,
        textColor: textColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(image, width: 20, height: 20, fit: BoxFit.cover, color: iconColor),
            const SizedBox(width: 12),
            Expanded(
              child: Text(title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: textColor)),
            ),
            if (isShowArrow)
              Image.asset(AppImagePath.arrowRightSmall,
                  width: 20, height: 20, fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
