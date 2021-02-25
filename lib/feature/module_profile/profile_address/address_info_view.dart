import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_image_path.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class AddressInfoView extends StatelessWidget {
  final String title, subtitle;

  const AddressInfoView({
    Key key,
    this.title = '222 Cullingworth Mills Yard',
    this.subtitle = '222 Cullingworth Mills Yard, North Bridge, Halifax',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding:
          const EdgeInsets.symmetric(horizontal: AppMargin.paddingContentHoz),
      child: Row(
        children: <Widget>[
          const Image(
            height: 20,
            width: 20,
            image: AssetImage(AppImagePath.mapPin),
          ),
          const SizedBox(width: AppMargin.big),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title ?? '',
                maxLines: 1,
                style: Theme.of(context).textTheme.bodyText2.copyWith(color: AppColor.lightBlueGray, height: 1.47),
              ),
              const SizedBox(height: AppMargin.small),
              Text(
                subtitle ?? '',
                maxLines: 2,
                style: Theme.of(context).textTheme.caption.copyWith(color: AppColor.gray),
              ),
            ],
          )
        ],
      ),
    );
  }
}
