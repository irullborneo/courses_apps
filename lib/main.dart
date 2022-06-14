import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_learning/utils/colors.dart';
import 'package:test_learning/views/layouts/main.layout.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        canvasColor: backgroundColor,
        cardColor: secondaryColor,
          bottomAppBarColor:backgroundColor
      ),
      home: const MainLayout(),
    );
  }
}
