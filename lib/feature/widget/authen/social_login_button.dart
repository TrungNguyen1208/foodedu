import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class SocialLoginButton extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onPress;
  final Color color, textColor;

  const SocialLoginButton({
    Key key,
    @required this.title,
    @required this.image,
    this.onPress,
    this.color = AppColor.facebook,
    this.textColor = AppColor.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 46,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        onPressed: (onPress != null) ? onPress : () {},
        highlightColor: Colors.transparent,
        color: color,
        textColor: textColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(image, width: 30, height: 30, fit: BoxFit.cover),
            const SizedBox(width: AppMargin.bigger),
            Text(title.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(color: textColor, fontSize: 14.0)),
          ],
        ),
      ),
    );
  }
}
