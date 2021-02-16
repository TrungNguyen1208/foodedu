import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class RightLinkText extends StatelessWidget {
  final String textLeft;
  final String textRight;
  final VoidCallback onPressedLink;
  final TextAlign textAlign;

  const RightLinkText({
    Key key,
    @required this.textLeft,
    @required this.textRight,
    this.onPressedLink,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
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
          recognizer: TapGestureRecognizer()
            ..onTap = onPressedLink ?? () {},
        ),
      ]),
    );
  }
}
