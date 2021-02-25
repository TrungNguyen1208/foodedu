import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogUtil {
  static DialogUtil _dialogUtil;

  // ignore: prefer_constructors_over_static_methods
  static DialogUtil get instance => _dialogUtil ??= DialogUtil();

  void showErrorDialog(BuildContext context, String message) {
    // set up the buttons
    final Widget cancelButton = CupertinoDialogAction(
      isDefaultAction: true,
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text('OK'),
    );

    // set up the AlertDialog
    final alert = CupertinoAlertDialog(
      title: const Text('Error',),
      content: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(message),
      ),
      actions: <Widget>[
        cancelButton,
      ],
    );

    // show the dialog
    showDialog(
      barrierColor: Colors.black38,
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
