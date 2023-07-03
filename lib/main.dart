import 'package:flutter/material.dart';
import 'launcher/launcher_view.dart';
import 'constant.dart';
// ignore: unused_import
import 'package:flutter/services.dart';

void main() => runApp(new myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gojek',
      // ignore: unnecessary_new
      theme: new ThemeData(
        fontFamily: 'NeoSans', //font yang digunakan 'neosans'
        primaryColor: GojekPalette.green,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: GojekPalette.green),
      ),
      // ignore: unnecessary_new
      home: new LauncherPage(),
    );
  }
}
