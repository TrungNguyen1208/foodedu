import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  const PrimaryButton({
    Key key,
    @required this.text,
    this.color = AppColor.primary,
    this.textColor = AppColor.white,
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
        ),
        onPressed: (onPressed != null) ? onPressed : () {},
        color: color,
        textColor: textColor,
        child: Text(
          text ?? '',
          style: Theme.of(context).textTheme.subtitle1
              .copyWith(color: textColor),
        ),
      ),
    );
  }
}
