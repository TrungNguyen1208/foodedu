import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class SearchContainer extends StatelessWidget {
  final String placeHolder;
  final VoidCallback onPress;

  const SearchContainer({
    Key key,
    this.placeHolder = 'Search',
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: AppColor.offWhite,
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          border: Border.all(
            width: 1.0,
            color: AppColor.borderSearch,
          )),
      child: GestureDetector(
        onTap: onPress ?? () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: <Widget>[
              const Icon(
                Icons.search,
                color: AppColor.gray,
                size: 20.0,
              ),
              const SizedBox(width: AppMargin.big),
              Expanded(
                child: Text(placeHolder,
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(color: AppColor.gray, height: 1.2, )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
