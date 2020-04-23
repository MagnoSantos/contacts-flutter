import 'package:contacts/ios/ios.aplicacao.dart';
import 'package:flutter/material.dart';
import 'android/android.aplicacao.dart';
import 'dart:io';

void main() {
  if (Platform.isIOS) {
    runApp(IOSApp());
  } else {
    runApp(AndroidApp());
  }
}
