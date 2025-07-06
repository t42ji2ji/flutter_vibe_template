import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

class ToastHelper {
  static void showSuccess(String message) {
    showToast(
      message,
      backgroundColor: Colors.green,
      textStyle: const TextStyle(color: Colors.white),
      duration: const Duration(seconds: 3),
    );
  }

  static void showError(String message) {
    showToast(
      message,
      backgroundColor: Colors.red,
      textStyle: const TextStyle(color: Colors.white),
      duration: const Duration(seconds: 4),
    );
  }

  static void showWarning(String message) {
    showToast(
      message,
      backgroundColor: Colors.orange,
      textStyle: const TextStyle(color: Colors.white),
      duration: const Duration(seconds: 3),
    );
  }

  static void showInfo(String message) {
    showToast(
      message,
      backgroundColor: Colors.blue,
      textStyle: const TextStyle(color: Colors.white),
      duration: const Duration(seconds: 3),
    );
  }

  static void showCustom({
    required String message,
    Color? backgroundColor,
    TextStyle? textStyle,
    Duration? duration,
    Widget? leading,
  }) {
    Widget toastWidget = Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.black87,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) ...[
            leading,
            const SizedBox(width: 8),
          ],
          Flexible(
            child: Text(
              message,
              style: textStyle ?? const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );

    showToastWidget(
      toastWidget,
      duration: duration ?? const Duration(seconds: 3),
    );
  }
}