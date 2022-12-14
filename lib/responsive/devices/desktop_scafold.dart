import 'package:flutter/material.dart';
import 'package:responsive_web/responsive/constants.dart';
import 'package:responsive_web/utils/pub_card.dart';
import 'package:responsive_web/utils/title_card.dart';

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
          Expanded(
            flex: 2,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (context, index) {
                        return PubCard();
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, builder) {
                      return TitleCard();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
