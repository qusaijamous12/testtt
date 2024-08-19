import 'package:flutter/material.dart';
import 'package:tictactoegame/shared/colors/my_color.dart';

import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildRow(),
            buildImage(height: 156, width: 280, image: 'assets/image/game.png'),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: buildMyButton(height: 56, width: 322, onpress: (){

              }, text: 'Login with Facebook ', image: 'assets/image/fblogo.png'),
            ),
            SizedBox(
              height: 15,
            ),
            buildMyButton(height: 56, width: 322, onpress: (){

            }, text: 'Sign in with Google', image: 'assets/image/googleicon.png'),



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
