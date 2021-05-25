import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class CustomToast {
  static Function show({
    required String title,
    required String body,
    required Icon icon,
    Color? titleFontColor,
    VoidCallback? onClose,
    Duration? duration,
  }) {
    return BotToast.showCustomNotification(
      toastBuilder: (_) => Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              blurRadius: 16,
              color: Colors.grey.withOpacity(.3),
              spreadRadius: 16,
            )
          ],
        ),
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 4,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  icon,
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: titleFontColor ?? Color.fromRGBO(52, 40, 19, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                body,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
      duration: duration,
      onClose: onClose,
      onlyOne: true,
    );
  }
}
