import 'package:astron/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Astron")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              title: "Rocket",
              description: "A rocket",
              imagePath: "images/rocket.png",
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    title: "Star",
                    description: "A star",
                    imagePath: "images/star.png",
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    title: "Moon",
                    description: "A moon",
                    imagePath: "images/moon-landing.png",
                  ),
                ),
              ],
            ),

            CardWidget(
              title: "Earth",
              description: "A earth",
              imagePath: "images/earth.png",
            ),
          ],
        ),
      ),
    );
  }
}
