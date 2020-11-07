import 'dart:async';

import 'package:flutter/services.dart';

import 'package:flutter/material.dart';

class SpInitials {
  static const MethodChannel _channel = const MethodChannel('sp_initials');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static String getInitials(String fullName) {
    List<String> _flName = fullName.split(" ");
    String _initials;
    if (_flName.length == 1) {
      _initials = _flName[0].substring(0, 1);
    } else {
      _initials = _flName[0].substring(0, 1) + _flName[1].substring(0, 1);
    }
    return _initials;
  }

  static Widget getInitialsWithShape(
      {@required BuildContext context,
      @required String fullName,
      double radius,
      bool isCircle,
      double borderRadius,
      double borderWidth,
      Color borderColor,
      Color backgroundColor,
      double fontSize,
      FontWeight fontWeight,
      Color fontColor,
      String fontFamily,
      double letterSpacing}) {
    if (radius == null && fontSize != null) {
      radius = fontSize * 2;
    }
    return Container(
        height: (radius != null) ? radius : 30.0,
        width: (radius != null) ? radius : 30.0,
        decoration: BoxDecoration(
          shape: (isCircle ?? false) ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: (borderRadius != null)
              ? BorderRadius.circular(borderRadius)
              : null,
          border: (borderWidth == null && borderColor == null)
              ? null
              : (borderWidth != null && borderColor != null)
                  ? Border.all(width: borderWidth, color: borderColor)
                  : (borderColor != null)
                      ? Border.all(width: 1.0, color: borderColor)
                      : Border.all(width: borderWidth),
          color: (backgroundColor != null)
              ? backgroundColor
              : Theme.of(context).primaryColor,
        ),
        child: Center(
          child: Text(SpInitials.getInitials(fullName),
              style: TextStyle(
                  fontSize: (fontSize != null) ? fontSize : 14.0,
                  fontWeight:
                      (fontWeight != null) ? fontWeight : FontWeight.normal,
                  color: (fontColor != null) ? fontColor : Colors.black,
                  fontFamily: (fontFamily != null) ? fontFamily : null,
                  letterSpacing:
                      (letterSpacing != null) ? letterSpacing : 0.0)),
        ));
  }
}
