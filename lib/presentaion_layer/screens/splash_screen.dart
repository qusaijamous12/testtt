import 'package:flutter/material.dart';
import 'package:tictactoegame/presentaion_layer/widgets/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildRow(),
            buildImage(height: 156, width: 280, image: 'assets/image/game.png'),

          ],
        ),
      ),
    );
  }
  Widget buildRow()=> Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      buildImage(height: 124, width: 124.91, image: 'assets/image/ximage.png'),
      SizedBox(
        width: 20,
      ),
     buildImage(height: 123, width: 123, image: 'assets/image/imageo.png')
    ],
  );
}
