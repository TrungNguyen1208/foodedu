import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class SocialButton extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onPress;
  final Color color, textColor;

  const SocialButton({
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
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(image, width: 30, height: 30, fit: BoxFit.cover),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(title.toUpperCase(),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: textColor, fontSize: 14.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
