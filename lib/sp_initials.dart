import 'dart:async';

import 'package:flutter/services.dart';

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
}
