import 'package:flutter/material.dart';

class Util {
  static void showMessage(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      elevation: 6,
      backgroundColor: color,
      behavior: SnackBarBehavior.floating,
    ));
  }

  static void showErrorMessage(BuildContext context, String message) {
    showMessage(context, message, Colors.red);
  }

  static void showSuccessMessage(BuildContext context, String message) {
    showMessage(context, message, Colors.blue);
  }
}
