import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ScreenTypeLayout(
          mobile: HomeScreenMobile(),
          tablet: HomeScreenDesktop(),
        ),);
  }
}
