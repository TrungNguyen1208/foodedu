import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final Color color, textColor, borderColor;
  final VoidCallback onPressed;

  const SecondaryButton({
    Key key,
    @required this.text,
    this.color = AppColor.white,
    this.textColor = AppColor.primary,
    this.borderColor = AppColor.primary,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 46,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: borderColor),
        ),
        onPressed: (onPressed != null) ? onPressed : () {},
        color: color,
        textColor: textColor,
        child: Text(
          text ?? '',
          style: Theme
              .of(context)
              .textTheme
              .subtitle1
              .copyWith(color: textColor),
        ),
      ),
    );
  }
}
