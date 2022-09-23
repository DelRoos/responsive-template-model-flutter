import 'package:flutter/material.dart';
import 'package:responsive_web/responsive/constants.dart';

class DesktopScafold extends StatefulWidget {
  const DesktopScafold({super.key});

  @override
  State<DesktopScafold> createState() => _DesktopScafoldState();
}

class _DesktopScafoldState extends State<DesktopScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: defaultBackground,
      // drawer: drawer,
      body: Row(
        children: [
          drawer,
        ],
      ),
    );
  }
}
