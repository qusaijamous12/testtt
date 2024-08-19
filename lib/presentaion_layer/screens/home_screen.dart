import 'package:flutter/material.dart';
import 'package:tictactoegame/shared/colors/my_color.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildRow(),
            buildImage(height: 91, width: 163, image: 'assets/image/game.png'),
           const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Image(
                  height: 62,
                    width: 62,
                    image: AssetImage(
                  'assets/image/profile.png'
                )),
               const SizedBox(
                  width: 10,
                ),
                RichText(
                  text: TextSpan(
                    children:[
                      TextSpan(
                        text: 'Welcome ',
                        style: TextStyle(
                          color: Color(0xFF78D4D9),
                          fontSize: 20
                        )
                      ),
                      TextSpan(
                          text: 'Murad',
                          style: TextStyle(
                              color: Color(0xFF5BAFE4),
                              fontSize: 20
                          )
                      )
                    ]
                  ),

                )
              ],
            ),
           const SizedBox(
              height: 30,
            ),
           const Text(
              'Choose your play mode',
              style: TextStyle(
                color: Color(0xFFF9AC5B),
                fontSize: 20,

                
              ),
            ),
           const SizedBox(
              height: 20,
            ),
            buildDefauldButton(
                onpress: (){},
                text: 'With Ai',
                height: 56,
                width: 322,
                color: MyColor.my_blue),
           const SizedBox(
              height: 20,
            ),
            buildDefauldButton(
                onpress: (){},
                text: 'With Ai',
                height: 56,
                width: 322,
                color: MyColor.my_orange)


          ],
        ),
      ),
    );
  }
  Widget buildRow()=> Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      buildImage(height: 71, width: 71.52, image: 'assets/image/ximage.png'),
     const SizedBox(
        width: 20,
      ),
      buildImage(height:70 , width:70 , image: 'assets/image/imageo.png')
    ],
  );

}
