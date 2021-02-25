import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodedu/commom/button/primary_button.dart';
import 'package:foodedu/commom/text/title_section.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_image_path.dart';
import 'package:foodedu/general/constant/app_theme.dart';
import 'package:image_picker/image_picker.dart';

import 'address_info_view.dart';

class ProfileAddressScreen extends StatefulWidget {
  @override
  _ProfileAddressScreenState createState() => _ProfileAddressScreenState();
}

class _ProfileAddressScreenState extends State<ProfileAddressScreen> {
  final _picker = ImagePicker();
  PickedFile _imageFile;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile & Address'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  _buildAvatarContainer(),
                  const TitleSection(
                    title: 'User Information',
                    isShowRightText: false,
                  ),
                  const SizedBox(height: AppMargin.bigger),
                  _buildAddressList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppMargin.paddingContentHoz,
                  vertical: AppMargin.big),
              child: PrimaryButton(text: 'SAVE', onPressed: _onPressSave),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatarContainer() {
    const defaultAvatarImage = AssetImage(AppImagePath.avatar);
    final isChangeAvatar = _imageFile != null;

    return Padding(
      padding: const EdgeInsets.only(
          top: AppMargin.litterBigger, bottom: AppMargin.bigger),
      child: Center(
        child: Stack(
          children: <Widget>[
            Container(
              height: 95.w,
              width: 95.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: isChangeAvatar ? FileImage(File(_imageFile.path)) : defaultAvatarImage,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: GestureDetector(
                onTap: _onPressChangeAvatar,
                child: Image(
                  height: 28.w,
                  width: 28.w,
                  image: const AssetImage(AppImagePath.circleCamera),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddressList() {
    return Column(
      children: <Widget>[
        const TitleSection(title: 'Address', rightText: 'Add more'),
        const SizedBox(height: AppMargin.big),
        _buildSeparatorView(),
        ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          itemCount: 2,
          separatorBuilder: (context, index) => _buildSeparatorView(),
          itemBuilder: (context, index) {
            return const AddressInfoView();
          },
        ),
        _buildSeparatorView(),
      ],
    );
  }

  Widget _buildSeparatorView() {
    return const SizedBox(
      width: double.infinity,
      height: 1.0,
      child: DecoratedBox(decoration: BoxDecoration(color: AppColor.line)),
    );
  }

  void _onPressChangeAvatar() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () {
                  _getImageFromSource(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  _getImageFromSource(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _onPressSave() {}

  Future<void> _getImageFromSource(ImageSource source) async {
    try {
      final pickedFile = await _picker.getImage(
        source: source,
        maxWidth: 200,
        maxHeight: 200,
        imageQuality: 100,
      );
      if (pickedFile != null) {
        setState(() {
          _imageFile = pickedFile;
        });
      }
    // ignore: empty_catches
    } catch (e) {}
  }
}
