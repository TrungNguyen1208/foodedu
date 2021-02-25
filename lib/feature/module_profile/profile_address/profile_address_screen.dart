import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

  FocusNode _focusEmail, _focusFirstName, _focusLastName, _focusPhone;

  final _picker = ImagePicker();
  PickedFile _imageFile;
  bool isEnableSaveButton = false;

  @override
  void initState() {
    super.initState();
    _focusEmail = FocusNode();
    _focusFirstName = FocusNode();
    _focusLastName = FocusNode();
    _focusPhone = FocusNode();
  }

  @override
  void dispose() {
    _focusEmail.dispose();
    _focusFirstName.dispose();
    _focusLastName.dispose();
    _focusPhone.dispose();
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
                  const TitleSection(title: 'User Information', isShowRightText: false,),
                  _buildInputField(),
                  _buildAddressList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppMargin.paddingContentHoz, vertical: AppMargin.big),
              child: IgnorePointer(
                ignoring: !isEnableSaveButton,
                child: Container(
                  width: double.infinity,
                  height: 46,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    onPressed: _onPressSave,
                    color: isEnableSaveButton ? AppColor.primary : AppColor.disableButton,
                    textColor: Colors.white,
                    child: Text('SAVE', style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
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
                  image: isChangeAvatar
                      ? FileImage(File(_imageFile.path))
                      : defaultAvatarImage,
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

  Widget _buildInputField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(AppMargin.paddingContentHoz, AppMargin.big, AppMargin.paddingContentHoz, AppMargin.bigger),
      child: Column(children: <Widget>[
        _buildInputNameField(),
        const SizedBox(height: AppMargin.big),
        TextField(
          focusNode: _focusEmail,
          maxLines: 1,
          textInputAction: TextInputAction.next,
          keyboardAppearance: Brightness.light,
          keyboardType: TextInputType.emailAddress,
          maxLength: LimitText.emailAddressMaxLength,
          style: Theme.of(context).textTheme.bodyText1,
          cursorColor: AppColor.darkGrayHighlighted,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            alignLabelWithHint: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: const BorderSide(color: AppColor.borderTextField, width: 1)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: const BorderSide(color: AppColor.borderTextField, width: 1)
            ),
            counterText: '',
            labelText: 'Email',
            labelStyle: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        const SizedBox(height: AppMargin.big),
        _buildInputGenderAndPhone(),
      ]),
    );
  }

  Widget _buildInputNameField() {
    return Row(children: <Widget>[
      Container(
        width: 187.w,
        child: TextField(
          focusNode: _focusFirstName,
          maxLines: 1,
          textInputAction: TextInputAction.next,
          keyboardAppearance: Brightness.light,
          keyboardType: TextInputType.name,
          maxLength: LimitText.firstNameMaxLength,
          style: Theme.of(context).textTheme.bodyText1,
          cursorColor: AppColor.darkGrayHighlighted,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            alignLabelWithHint: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(color: AppColor.borderTextField, width: 1)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(color: AppColor.borderTextField, width: 1)
            ),
            counterText: '',
            labelText: 'First Name',
            labelStyle: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
      SizedBox(width: 10.w),
      Expanded(
        child: TextField(
          focusNode: _focusLastName,
          maxLines: 1,
          textInputAction: TextInputAction.next,
          keyboardAppearance: Brightness.light,
          keyboardType: TextInputType.name,
          maxLength: LimitText.lastNameMaxLength,
          style: Theme.of(context).textTheme.bodyText1,
          cursorColor: AppColor.darkGrayHighlighted,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            alignLabelWithHint: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(color: AppColor.borderTextField, width: 1)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(color: AppColor.borderTextField, width: 1)
            ),
            counterText: '',
            labelText: 'Last Name',
            labelStyle: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    ]);
  }

  Widget _buildInputGenderAndPhone() {
    return Row(children: <Widget>[
      Container(
        width: 95.w,
        child: TextField(
          maxLines: 1,
          textInputAction: TextInputAction.next,
          style: Theme.of(context).textTheme.bodyText1,
          cursorColor: AppColor.darkGrayHighlighted,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            alignLabelWithHint: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(color: AppColor.borderTextField, width: 1)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(color: AppColor.borderTextField, width: 1)
            ),
            counterText: '',
            labelText: 'Gender',
            labelStyle: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
      SizedBox(width: 8.w),
      Expanded(
        child: TextField(
          focusNode: _focusPhone,
          maxLines: 1,
          textInputAction: TextInputAction.done,
          keyboardAppearance: Brightness.light,
          keyboardType: TextInputType.phone,
          maxLength: LimitText.phoneNumberMaxLength,
          style: Theme.of(context).textTheme.bodyText1,
          cursorColor: AppColor.darkGrayHighlighted,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            alignLabelWithHint: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(color: AppColor.borderTextField, width: 1)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(color: AppColor.borderTextField, width: 1)
            ),
            counterText: '',
            labelText: 'Phone',
            labelStyle: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    ]);
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
