import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// 状態変更時の通知
class AppSettings extends ChangeNotifier {
  String _fontFamily = 'Roboto';
  String get fontFamily => _fontFamily;

  void setFontFamily(String font) {
    _fontFamily = font;
    notifyListeners();
  }
}
