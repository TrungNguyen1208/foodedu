import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_image_path.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class ProfileHeaderView extends StatelessWidget {
  static const BoxDecoration _boxCircleGradient = BoxDecoration(
    shape: BoxShape.circle,
    gradient: LinearGradient(
        begin: Alignment(0.07, -0.56),
        end: Alignment(3.17, -1.93),
        colors: [
          Color.fromRGBO(255, 173, 113, 0.35),
          Color.fromRGBO(255, 121, 84, 0.35)
        ]),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 265,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Container(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 90,
                      width: 90,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AppImagePath.avatar),
                          )),
                    ),
                    const SizedBox(height: AppMargin.litterBigger),
                    Text(
                      'Ocoho Pinocchio',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(height: AppMargin.normal),
                    Text('(424) 545-1818',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: AppColor.lightBlueGray))
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: -136 / 2,
              right: -136 / 2,
              child: Container(
                  width: 136, height: 136, decoration: _boxCircleGradient),
            ),
            Positioned(
              left: -166 / 2,
              top: -166 / 2,
              child: Container(
                  width: 166, height: 166, decoration: _boxCircleGradient),
            ),
            Positioned(
              left: 40,
              top: -116 / 2,
              child: Container(
                  width: 116, height: 116, decoration: _boxCircleGradient),
            ),
            Positioned(
              top: 51,
              right: 10,
              child: IconButton(
                icon: Image.asset(AppImagePath.notificationBadge),
                iconSize: 29,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
