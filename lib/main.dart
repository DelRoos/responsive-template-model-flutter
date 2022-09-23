import 'package:flutter/material.dart';
import 'package:responsive_web/responsive/devices/desktop_scafold.dart';
import 'package:responsive_web/responsive/devices/mobile_scafold.dart';
import 'package:responsive_web/responsive/devices/tablet_scafold.dart';
import 'package:responsive_web/responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScafold(),
        tabletScaffold: TabletScafold(),
        desktopScaffold: DesktopScafold(),
      ),
    );
  }
}
