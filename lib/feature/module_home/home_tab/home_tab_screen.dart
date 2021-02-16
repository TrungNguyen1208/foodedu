import 'package:flutter/material.dart';
import 'package:foodedu/commom/container/search_container.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_image_path.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class HomeTabScreen extends StatefulWidget {
  @override
  _HomeTabScreenState createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          const SizedBox(height: AppMargin.litterBigger),
          _buildWelcomeHeader(),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppMargin.paddingContentHoz,
                vertical: AppMargin.litterBigger),
            child: SearchContainer(
              placeHolder: 'Search for restaurants, dishes...',
              onPress: _onPressSearch,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWelcomeHeader() {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: AppMargin.paddingContentHoz),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Hello,',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(color: const Color(0xff162936))),
                    const TextSpan(text: ' '),
                    TextSpan(
                      text: 'Ocoho!',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: AppColor.primary),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppMargin.normal),
              Row(
                children: [
                  Text('North Bridge, Halifax',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodyText2.copyWith(color: AppColor.gray)),
                  const SizedBox(width: AppMargin.small),
                  const Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: AppColor.primary,
                    size: 20.0,
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(AppImagePath.avatar),
                ),
              ))
        ],
      ),
    );
  }

  void _onPressSearch() {}
}
