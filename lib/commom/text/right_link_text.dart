import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class RightLinkText extends StatelessWidget {
  final String textLeft;
  final String textRight;
  final VoidCallback onPressedLink;

  const RightLinkText(
      {Key key,
      @required this.textLeft,
      @required this.textRight,
      this.onPressedLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: <TextSpan>[
        TextSpan(
            text: textLeft ?? '',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: AppColor.lightBlueGray)),
        const TextSpan(text: ' '),
        TextSpan(
          text: textRight ?? '',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: AppColor.primary),
          recognizer: TapGestureRecognizer()..onTap = (onPressedLink != null) ? onPressedLink : () {},
        ),
      ]),
    );
  }
}
