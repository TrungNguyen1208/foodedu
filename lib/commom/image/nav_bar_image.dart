import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class NavBarImage extends StatelessWidget {

  final String imagePath;
  final bool isSelected;

  const NavBarImage({Key key, this.imagePath, this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
        AssetImage(imagePath),
        color: isSelected ? AppColor.primary : AppColor.gray);
  }
}
