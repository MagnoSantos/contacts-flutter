import 'package:flutter/material.dart';
import 'android/android.aplicacao.dart';
import 'dart:io';

void main() {
  if (Platform.isIOS) {
  } else {
    runApp(AndroidApp());
  }
}
