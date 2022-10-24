import 'package:flutter/material.dart';
import 'package:netflix_clone_app/responsive_layout/responsive_layout.dart';
import 'package:netflix_clone_app/screens/mobile_layout.dart';
import 'package:netflix_clone_app/screens/tablet_layout.dart';
import 'package:netflix_clone_app/screens/web_layout.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ResponsiveLayout(
      mobileLayout: MobileLayout(),
      tabletLayout: TabletLayout(),
      webLayout: WebLayout(),
    ));
  }
}
