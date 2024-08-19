import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class SelectSide extends StatelessWidget {
  const SelectSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const Text(
              'Pick Your Side',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFFF9AC5B)
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 60, 30, 30),
              child: buildRow(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.grey[300],
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.grey[300],
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 160, 0, 0),
              child: buildDefauldButton(
                  onpress: (){},
                  text: 'Continue',
                  height: 56,
                  width: 322,
                  color: Color(0xFF54A4E7)),
            )




          ],
        ),
      )
    );
  }
  Widget buildRow()=> Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      buildImage(height: 124, width: 124.91, image: 'assets/image/ximage.png'),
      const SizedBox(
        width: 20,
      ),
      buildImage(height:123 , width:123 , image: 'assets/image/imageo.png')
    ],
  );

}
