import 'package:flutter/material.dart';

class AppButtonBoderWidget extends ElevatedButton {
  AppButtonBoderWidget(
      {required String title,
      Color? borderColor,
      Color? backgroundColor,
      Color? disableColor,
      Color? textColor,
      VoidCallback? onPressed})
      : super(
            child: Text(
              title,
              style: TextStyle(
                color: textColor != null
                    ? textColor
                    : onPressed != null
                        ? Color(0xffd10000)
                        : Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'SFProDisplaySemiBold',
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: onPressed,
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(double.infinity, 48)),
              shape:
                  MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
                return RoundedRectangleBorder(
                    side: BorderSide(
                      color: onPressed == null
                          ? disableColor ?? Colors.grey
                          : borderColor ?? const Color(0xffD10000),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(8)));
              }),
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (states) {
                  return onPressed != null
                      ? backgroundColor ?? Colors.white
                      : disableColor ?? Colors.grey;
                },
              ),
            ));
}
