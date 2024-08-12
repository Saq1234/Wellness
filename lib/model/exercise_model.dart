import 'dart:ui';

import 'package:flutter/material.dart';

class Exercise{
  String? image;
  String? mints;
  String? title;
  String? subtite;
  Color? colurl;

  Exercise(this.image,this.mints,this.title,this.subtite,this.colurl);
}
List<Exercise> exerciseList=[
  Exercise("assets/images/one.jpg",
      "20 mins",
      "Strength Training",
      "7 day challange",
    Color(0xff9370DB),

  ),
  Exercise("assets/images/two.jpg",
      "20 mins",
      "High Intensity Cardio",
      "30 day challange",
    Color(0xff808080),

  ),
  Exercise("assets/images/three.jpg",
      "20 mins",
      "Plyometric",
      "30 day challange",
    Color(0xff808080),

  ),
];