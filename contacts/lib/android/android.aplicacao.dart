import 'package:contacts/android/stlyes.dart';
import 'package:contacts/android/views/home.view.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contatos Demo',
      debugShowCheckedModeBanner: false,
      theme: androidTheme(),
      home: HomeView(),
    );
  }
}