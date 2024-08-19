import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/colors/my_color.dart';

Widget buildImage({
  required double height,
  required double width,
  required String image
})=>  Image(
  fit: BoxFit.fitWidth,
    height: height,
    width: width,
    image: AssetImage(
        '${image}'
    ));

Widget buildMyButton({
  required double height,
  required double width,
  required void Function()? onpress,
  required String text,
  required String image
})=> Container(
  height: height,
  width: width,
  decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadiusDirectional.circular(40),
      border: Border.all(
          color: Colors.black
      )

  ),
  child: MaterialButton(
    onPressed:onpress,
    child: Row(
      children: [
        buildImage(height: 40, width: 40, image: '$image'),
        const SizedBox(
          width: 15,
        ),
         Text(
          '$text',
          style:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: MyColor.my_face_logo
          ),

        )

      ],
    ),
  ),
);

Widget buildDefauldButton({
  required void Function()? onpress,
  required String text,
  required double height,
  required double width,
  required Color color
})=>
    Container(
      height:height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(20),
        color: color

      ),
      child: MaterialButton(
          onPressed:onpress,
        child: Text(
          '$text',
          style:const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
    );