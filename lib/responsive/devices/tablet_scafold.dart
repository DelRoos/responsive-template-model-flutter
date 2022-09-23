import 'package:flutter/material.dart';
import 'package:responsive_web/responsive/constants.dart';
import 'package:responsive_web/utils/pub_card.dart';
import 'package:responsive_web/utils/title_card.dart';

class TabletScafold extends StatefulWidget {
  const TabletScafold({super.key});

  @override
  State<TabletScafold> createState() => _TabletScafoldState();
}

class _TabletScafoldState extends State<TabletScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: defaultBackground,
      drawer: drawer,
      body: Column(
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
    );
  }
}
